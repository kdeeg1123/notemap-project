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
    puts "Notes Used:"
    array.each_with_index do |e, i|
      if i < array.size - 1
        print "#{array[i]} "
      else
        print "#{array[i]}\n"
      end
    end
  end
end
