require 'Note'

describe Note do
  describe ".core_note_value" do
    context "given a note with letter name c" do
      let(:note) { Note.new('c', '') }
      it "has a core note value of 0" do
        expect(note.core_note_value()).to eq(0)
      end
    end
    
    context "given a note with letter name d" do
      let(:note) { Note.new('d', '') }
      it "has a core note value of 2" do
        expect(note.core_note_value()).to eq(2)
      end
    end
    
    context "given a note with letter name e" do
      let(:note) { Note.new('e', '') }
      it "has a core note value of 4" do
        expect(note.core_note_value()).to eq(4)
      end
    end
    
    context "given a note with letter name f" do
      let(:note) { Note.new('f', '') }
      it "has a core note value of 5" do
        expect(note.core_note_value()).to eq(5)
      end
    end
    
    context "given a note with letter name g" do
      let(:note) { Note.new('g', '') }
      it "has a core note value of 7" do
        expect(note.core_note_value()).to eq(7)
      end
    end
    
    context "given a note with letter name a" do
      let(:note) { Note.new('a', '') }
      it "has a core note value of 9" do
        expect(note.core_note_value()).to eq(9)
      end
    end
    
    context "given a note with letter name b" do
      let(:note) { Note.new('b', '') }
      it "has a core note value of 11" do
        expect(note.core_note_value()).to eq(11)
      end
    end
    
    context "given an invalid note name 'w'" do
      let(:note) { Note.new('w', '') }
      it "returns an error" do
        expect {note.core_note_value() }.to raise_error(NoteException)
      end
    end
  end
  
  describe ".in_clef" do
    context "given note aes,," do
      let(:note) { Note.new('aes', ',,') }
      it "returns as bass clef" do
        note.find_frequency
        expect(note.in_clef).to eq('bass')
      end
    end
    
    context "given note e''" do
      let(:note) { Note.new('e', "''") }
      it "returns as treble clef" do
        note.find_frequency
        expect(note.in_clef).to eq('treble')
      end
    end
    
    context "given note c'" do
      let(:note) { Note.new('c', "'") }
      it "returns as bass clef" do
        note.find_frequency
        expect(note.in_clef).to eq('bass')
      end
    end
    
    context "given note des'" do
      let(:note) { Note.new('des', "'") }
      it "returns as treble clef" do
        note.find_frequency
        expect(note.in_clef).to eq('treble')
      end
    end
    
    context "given note deses'" do
      let(:note) { Note.new('deses', "'") }
      it "returns as bass clef" do
        note.find_frequency
        expect(note.in_clef).to eq('bass')
      end
    end
    
    context "given note bisis" do
      let(:note) { Note.new('bisis', '') }
      it "returns as treble clef" do
        note.find_frequency
        expect(note.in_clef).to eq('treble')
      end
    end
  end
end