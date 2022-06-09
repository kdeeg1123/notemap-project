require 'optparse'
require_relative 'Note'
require_relative 'helpers/note_helper'

options = {}
optparse = OptionParser.new do |opts|
  opts.banner = "Usage: ruby CreateNotemapFromLY.rb <lilypond_file.ly> [options]"
  opts.on("-f", "--file [FILE]", String, "Lilypond file") do |f|
    options[:file] = f
  end
  opts.on("-h", "--help", "Display this screen") do |h|
    puts opts
    exit
  end
end.parse!

begin
  optparse.parse!
  compulsory = [:file]
  missing = compulsory.select{ |param| options[param].nil? }
  unless missing.empty?
    raise OptionParser::MissingArgument.new(missing.join(', '))
  end
  
  file = options[:file]
  
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
    NoteHelper::print_formatted_array(NoteHelper::sort_notes_in_array(noteArray))
  rescue 
  puts $!
  puts $!.backtrace.join("\n\t")
  end
rescue OptionParser::InvalidOption, OptionParser::MissingArgument
  puts #!.to_s
  puts optparse
end

