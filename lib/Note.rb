require_relative './NoteExceptions'

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
    else
      raise NoteException.new("Invalid note creation attempted: '#{name}'")
    end
  end

  def core_note_value
    case self.name
    when 'c'
      1.0
    when 'd'
      2.0
    when 'e'
      3.0
    when 'f'
      4.0
    when 'g'
      5.0
    when 'a'
      6.0
    when 'b'
      7.0
    else
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
    when ',,,,'
      @octaveSortValue = 0
    when ',,,'
      @octaveSortValue = 10
    when ',,'
      @octaveSortValue = 20
    when ','
      @octaveSortValue = 30
    when ''
      @octaveSortValue = 40
    when '\''
      @octaveSortValue = 50
    when '\'\''
      @octaveSortValue = 60
    when '\'\'\''
      @octaveSortValue = 70
    when '\'\'\'\''
      @octaveSortValue = 80
    when '\'\'\'\'\''
      @octaveSortValue = 90
    else
      # Throw exception for invalid octave identification
      raise NoteException.new("Invalid octave identification. Must be either single quote ('), comma (,), or nothing")
    end
  end
end

