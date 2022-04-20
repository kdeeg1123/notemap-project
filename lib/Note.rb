class Note
  attr_accessor :name, :accidental, :octave, :sortValue
  def initialize(name, octave)
    begin
      if name =~ /^([a-g]{1})((es|is)*)$/
        @name = $1
        @accidental = $2
        @octave = octave
        @octave_num = ''
        @sortValue = 0
      else
        raise ArgumentError, "Note name should be a valid musical note"
      end
    rescue Exception => e
      e.message
      # puts e
    end
  end

  def core_note_value
    case @name
    when 'c'
      1
    when 'd'
      2
    when 'e'
      3
    when 'f'
      4
    when 'g'
      5
    when 'a'
      6
    when 'b'
      7
    else
    puts "Invalid note name - Need to throw exception here"
    0
    end
  end

  def sort_value
    case @accidental
    when /(es)+/
      n = @accidental.scan(/(es)+/).size
      @sortValue = core_note_value - (1 - (1.0 / (2 ^ n)))
    # puts "Flat: #{@accidental}; SortValue = #{@sortValue}"
    when /(is)+/
      n = @accidental.scan(/(is)+/).size
      @sortValue = core_note_value + (1 - (1.0 / (2 ^ n)))
    # puts "Sharp: #{@accidental}"
    else
    @sortValue = core_note_value
    # puts "put the default value of the core note here"
    end
  end
end

NOTE_DICTIONARY = [
  Note.new("c", ",")
]

NOTE_SORT = [
  # C3 - B3:
  Note.new("ces,", 3), Note.new("c,", 3), Note.new("cis,", 3), Note.new("des,", 3), Note.new("d,", 3), Note.new("dis,", 3),
  Note.new("ees,", 3), Note.new("e,", 3), Note.new("eis,", 3), Note.new("fes,", 3), Note.new("f,", 3), Note.new("fis,", 3),
  Note.new("ges,", 3), Note.new("g,", 3), Note.new("gis,", 3), Note.new("aes,", 3), Note.new("a,", 3), Note.new("ais,", 3),
  Note.new("bes,", 3), Note.new("b,", 3), Note.new("bis,", 3),
  # C4 - B4:
  Note.new("ces", 4), Note.new("c", 4), Note.new("cis", 4), Note.new("des", 4), Note.new("d", 4), Note.new("dis", 4),
  Note.new("ees", 4), Note.new("e", 4), Note.new("eis", 4), Note.new("fes", 4), Note.new("f", 4), Note.new("fis", 4),
  Note.new("ges", 4), Note.new("g", 4), Note.new("gis", 4), Note.new("aes", 4), Note.new("a", 4), Note.new("ais", 4),
  Note.new("bes", 4), Note.new("b", 4), Note.new("bis", 4),
  # C5 - B5:
  Note.new("ces'", 5), Note.new("c'", 5), Note.new("cis'", 5), Note.new("des'", 5), Note.new("d'", 5), Note.new("dis'", 5),
  Note.new("ees'", 5), Note.new("e'", 5), Note.new("eis'", 5), Note.new("fes'", 5), Note.new("f'", 5), Note.new("fis'", 5),
  Note.new("ges'", 5), Note.new("g'", 5), Note.new("gis'", 5), Note.new("aes'", 5), Note.new("a'", 5), Note.new("ais'", 5),
  Note.new("bes'", 5), Note.new("b'", 5), Note.new("bis'", 5),
  # C6 - B6:
  Note.new("ces''", 6), Note.new("c''", 6), Note.new("cis''", 6), Note.new("des''", 6), Note.new("d''", 6), Note.new("dis''", 6),
  Note.new("ees''", 6), Note.new("e''", 6), Note.new("eis''", 6), Note.new("fes''", 6), Note.new("f''", 6), Note.new("fis''", 6),
  Note.new("ges''", 6), Note.new("g''", 6), Note.new("gis''", 6), Note.new("aes''", 6), Note.new("a''", 6), Note.new("ais''", 6),
  Note.new("bes''", 6), Note.new("b''", 6), Note.new("bis''", 6),
  # C7 - B7:
  Note.new("ces'''", 7), Note.new("c'''", 7), Note.new("cis'''", 7), Note.new("des'''", 7), Note.new("d'''", 7), Note.new("dis'''", 7),
  Note.new("ees'''", 7), Note.new("e'''", 7), Note.new("eis'''", 7), Note.new("fes'''", 7), Note.new("f'''", 7), Note.new("fis'''", 7),
  Note.new("ges'''", 7), Note.new("g'''", 7), Note.new("gis'''", 7), Note.new("aes'''", 7), Note.new("a'''", 7), Note.new("ais'''", 7),
  Note.new("bes'''", 7), Note.new("b'''", 7), Note.new("bis'''", 7)
]

