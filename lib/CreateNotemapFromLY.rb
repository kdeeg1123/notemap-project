require 'optparse'
require_relative 'Note'
require_relative 'helpers/note_helper'

options = {}
optparse = OptionParser.new do |opts|
  opts.banner = "Usage: ruby CreateNotemapFromLY.rb <lilypond_file.ly> [options]"
  opts.on("-l", "--lyformat [FLAG]", TrueClass, "Print a format which can be dropped directly into a Lilypond file") do |l|
    options[:lyformat] = l.nil? ? true : l
  end
  opts.on("-h", "--help", "Display this screen") do |h|
    puts opts
    exit
  end
end.parse!

begin
  optparse.parse!
  
  raise ArgumentError.new("ArgumentError: wrong number of arguments (given #{ARGV.size}, expected 1)") if (ARGV.empty? || ARGV.size != 1)
  
  file = ARGV[0]
  raise ArgumentError.new("ArgumentError: invalid filetype (given #{ARGV[0][/\.\w+/].upcase}, expected Lilypond file (.ly) )") if file !~ /.+\.ly$/
  
  begin
    noteArray = Array.new # array of all unique Note objects
    notesUsed = Array.new # array to indicate if a note with the same name/octave has already been seen (if so, it will be skipped)
    
    lines = File.readlines(file)
    lines.each do |line|
      lineArray = line.split(/\s/)
      lineArray.each do |lineChar|
        if lineChar =~ /\A\<?([a-g]{1}(is|es)*(,|')*[\W\d\>\'\.\~]*)\z/
          parseChar = $1
          parseChar = parseChar.gsub(/[^a-s,']+/, "")
          if parseChar =~ /\A([a-s]+)([,']*)\z/
            noteName = $1
            noteOctave = $2 || ''
            next if notesUsed.include? "#{noteName + noteOctave}"
            notesUsed << "#{noteName + noteOctave}"
            
            note = Note.new(noteName, noteOctave)
            noteArray << note
          end
        end
      end
    end
    if options[:lyformat]
      NoteHelper::print_lilypond_format(noteArray)
    else
      NoteHelper::print_formatted_array(NoteHelper::sort_notes_in_array(noteArray))
    end
  rescue 
    puts $!
    puts $!.backtrace.join("\n\t")
  end
rescue OptionParser::InvalidOption, OptionParser::MissingArgument
  puts $!.to_s
  puts optparse
end

