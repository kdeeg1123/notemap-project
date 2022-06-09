require_relative 'NoteExceptions'
require_relative 'helpers/note_helper'

include NoteHelper
class Note
  attr_accessor :instrument, :octaveSortValue
  attr_reader :name, :accidental, :frequency, :octave, :octaveSortValue
  
  # Creates a Note object
  # @param name [String] the note name (a-g) with any corresponding alteration (flat(s)/sharp(s))
  # @param octave [String] the lilypond octave designation by comma (,), single quote ('), or nothing
  # @param accidental [String <Optional>] the lilypond accidental designation: (es)+ for flats or (is)+ for sharps
  # @param instrument [String <Optional>] indicating whether the note is handbell or chime
  # @param octaveSortValue [Float <Optional>] numerical value to indicate corresponding handbell octave
  # @param sortValue [Float <Optional>] numerical value for overall sorting purposes
  def initialize(name, octave)
    if name =~ /^([a-g]{1})((es|is)*)$/
      @name = $1
      @accidental = $2
      @instrument = ''
      @octave = octave
      @octaveSortValue = self.sort_octave
      @frequency = self.find_frequency
    else
      raise NoteException.new("Invalid note creation attempted: '#{name}'")
    end
  end

  def core_note_value
    begin
      NoteHelper::NOTE_DEFINITION_ORDER.find_index(self.name.upcase)
    rescue
      raise NoteException.new("Invalid note name. Input must be a valid note (a-g)")
    end
  end

  # Orders the note value based on octave in increments of 10.
  # octaveSortValue <= 50 (Bass notes)
  # octaveSortValue >  50 (Treble notes)
  # ',,,,' is the lowest handbell note in existence (G0)
  #
  # == Returns:
  #  Sets the @octave instance parameter for a specified note
  def sort_octave
    case @octave
    when ',,,'
      @octaveSortValue = 0
    when ',,'
      @octaveSortValue = 1
    when ','
      @octaveSortValue = 2
    when ''
      @octaveSortValue = 3
    when '\''
      @octaveSortValue = 4
    when '\'\''
      @octaveSortValue = 5
    when '\'\'\''
      @octaveSortValue = 6
    when '\'\'\'\''
      @octaveSortValue = 7
    when '\'\'\'\'\''
      @octaveSortValue = 8
    when '\'\'\'\'\'\''
      @octaveSortValue = 9
    else
    # Throw exception for invalid octave identification
    raise NoteException.new("Invalid octave identification. Must be either single quote ('), comma (,), or nothing")
    end
  end

  # Sets the physical frequency of the note indicated as an instance variable.
  #
  # == Sets:
  #  frequency [Float] the physical frequency of the specified note
  def find_frequency
    case @accidental
    when /(es)+/
      accidentalSize = @accidental.size / -2.0
    when /(is)+/
      accidentalSize = @accidental.size / 2.0
    else
    accidentalSize = 0
    end

    actualNoteValue = self.core_note_value + accidentalSize
    if actualNoteValue < 0
      @octaveSortValue = @octaveSortValue - 1
    elsif actualNoteValue >= 12
      @octaveSortValue = @octaveSortValue + 1
    end
    enharmonicValue = actualNoteValue % 12
    
    # enharmonicNote = NoteHelper::NOTE_DEFINITION_ORDER[enharmonicValue]
    distanceFromA = enharmonicValue - NoteHelper::NOTE_DEFINITION_ORDER.find_index('A')

    @frequency = (NoteHelper::FREQUENCY_OF_A_IN_OCTAVE[@octaveSortValue] * (2.0 ** (distanceFromA / 12.0))).round(2)
  end

  # Defines which clef the note resides (currently not supporting multi-sharp/flats across the staves)
  #
  # == Returns:
  #  'treble' OR 'bass' depending on @sortValue
  def in_clef
    # Get number of accidentals
    if @frequency < 270.00
      'bass'
    else
      'treble'
    end
  end
end

