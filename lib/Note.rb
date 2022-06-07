require_relative 'NoteExceptions'
require_relative 'helpers/note_helper'

include NoteHelper
class Note
  attr_accessor :name, :accidental, :instrument, :octave, :octaveSortValue, :sortValue
  # Creates a Note object
  # @param name [String] the note name (a-g) with any corresponding alteration (flat(s)/sharp(s))
  # @param octave [String] the lilypond octave designation by comma (,), single quote ('), or nothing
  # @param accidental [String] the lilypond accidental designation: (es)+ for flats or (is)+ for sharps
  # @param instrument [String] indicating whether the note is handbell or chime
  # @param octaveSortValue [Float] numerical value to indicate corresponding handbell octave
  # @param sortValue [Float] numerical value for overall sorting purposes
  def initialize(name, octave)
    if name =~ /^([a-g]{1})((es|is)*)$/
      @name = $1
      @accidental = $2
      @instrument = ''
      @octave = octave
      @octaveSortValue = 0
      @sortValue = 0
      @frequency = 0.0
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

  def sort_value
    self.sort_octave
    case @accidental
    when /(es)+/
      n = @accidental.size / 2.0
      @sortValue = @octaveSortValue + (self.core_note_value - n * (1.0 / 2))
    when /(is)+/
      n = @accidental.size / 2.0
      @sortValue = @octaveSortValue + (self.core_note_value + n * (1.0 / 2))
    else
    @sortValue = @octaveSortValue + self.core_note_value
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
  
  # Gets and returns the physical frequency of the note indicated.
  # @param coreNoteValue [Float] is the coreNoteValue of the wanted frequency from the Note.core_note_value method
  # @param accidentals [String] the list of accidentals (i.e. 'es+' or 'is+')
  # @param octaveSortValue [Int] is the octaveSortValue from the Note.sort_octave method
  #
  # == Returns:
  #  frequency [Float] the physical frequency of the specified note
  def find_frequency
    case @accidental
    when /(es)+/
      accidentalSize = accidentals.size / -2.0
    when /(is)+/
      accidentalSize = accidentals.size / 2.0
    else
    accidentalSize = 0
    end

    enharmonicValue = (self.core_note_value + accidentalSize) % 12
    # enharmonicNote = NoteHelper::NOTE_DEFINITION_ORDER[enharmonicValue]
    distanceFromA = enharmonicValue - NoteHelper::NOTE_DEFINITION_ORDER.find_index('A')

    @frequency = (NoteHelper::FREQUENCY_OF_A_IN_OCTAVE[@octaveSortValue] * (2.0 ** (distanceFromA / 12.0))).round(2)
    @frequency
  end

  # Defines which clef the note resides (currently not supporting multi-sharp/flats across the staves)
  #
  # == Returns:
  #  'treble' OR 'bass' depending on @sortValue
  def in_clef
    self.sort_value

    # Get number of accidentals
    accidentalCount = @accidental.size / 2

    if self.sort_octave < 50

    end
    if @sortValue > 51.0
      'treble'
    else
      'bass'
    end
  end
end

