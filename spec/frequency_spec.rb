require 'Note'

describe Note do
  describe "find_frequency_of (a)" do
    let(:note) { note = Note.new('a', '') }
    it "has a frequency of 220.0 Hz" do
      note.sort_octave
      note.find_frequency
      expect(note.frequency).to eq(220.00)
    end
  end

  describe "find_frequency_of (b)" do
    let(:note) { note = Note.new('b', '') }
    it "has a frequency of 246.94 Hz" do
      note.sort_octave
      note.find_frequency
      expect(note.frequency).to eq(246.94)
    end
  end

  describe "find_frequency_of (f')" do
    let(:note) { note = Note.new('f', "'") }
    it "has a frequency of 349.23 Hz" do
      note.sort_octave
      note.find_frequency
      expect(note.frequency).to eq(349.23)
    end
  end
end
