module NoteHelper
  # NOTE_DEFINITION_ORDER = ['A', 'A#', 'B', 'C', 'C#', 'D', 'Db', 'E', 'F', 'F#', 'G', 'G#']
  NOTE_DEFINITION_ORDER = ['C', 'C#', 'D', 'Db', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
  FREQUENCY_OF_A_IN_OCTAVE = [
    27.50, 55.00, 110.00, 220.00, 440.00, 880.00, 1760.00, 3520.00, 7040.00
  ]
  
  def sort_notes_into_array(*notes)
    if notes.count < 1
      raise NoteException.new("Not enough notes to sort!")
    else
      noteArray = Array.new
      notes.each do |note|
        noteArray << note
      end
      
      sortedNotes = sort_notes_in_array noteArray
      sortedNotes
    end
  end
  
  def sort_notes_in_array(noteArray)
    if noteArray.empty?
      raise NoteException.new("Array of notes to be sorted is not populated")
    else
      sortedNotes = noteArray.sort_by { |noteObj| noteObj.frequency }
      noteNameOnly = Array.new
      sortedNotes.each do |note|
        noteNameOnly << note.name + note.accidental + note.octave
      end
      noteNameOnly
    end
  end
  
  def print_formatted_array(array)
    array.each_with_index do |e, i|
      if i < array.size - 1
        print "#{array[i]} "
      else
        print "#{array[i]}\n"
      end
    end
  end
  
  def print_lilypond_format(noteArray)
    trebleArray = Array.new
    bassArray = Array.new
    
    noteArray.each do |note|
      if note.in_clef == 'treble'
        trebleArray << note
      else
        bassArray << note
      end
    end
    
    trebleArray = sort_notes_in_array trebleArray
    bassArray = sort_notes_in_array bassArray
    
    puts '\score {'
    puts '  \new StaffGroup'
    puts '  <<'
    puts '    \cadenzaOff'
    puts '    \new Staff = "upper" {'
    puts '      \key c \major'
    puts '      \hide Stem'
    print '      '
    print_formatted_array trebleArray
    puts '      \undo \hide Stem'
    puts '    }'
    puts '    \new Staff = "lower" {'
    puts '      \key c \major'
    puts '      \hide Stem'
    print '      '
    print_formatted_array bassArray
    puts '      \undo \hide Stem'
    puts '    }'
    puts '    \cadenzaOn'
    puts '  >>'
    puts '}'
  end
end

