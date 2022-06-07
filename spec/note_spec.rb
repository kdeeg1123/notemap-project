require 'Note'

describe Note do
  describe ".core_note_value" do
    context "given a note with letter name c" do
      let(:note) { Note.new('c', '') }
      it "returns 1" do
        expect(note.core_note_value()).to eq(1.0)
      end
    end
    
    context "given a note with letter name d" do
      let(:note) { Note.new('d', '') }
      it "returns 2" do
        expect(note.core_note_value()).to eq(2.0)
      end
    end
    
    context "given a note with letter name e" do
      let(:note) { Note.new('e', '') }
      it "returns 3" do
        expect(note.core_note_value()).to eq(3.0)
      end
    end
    
    context "given a note with letter name f" do
      let(:note) { Note.new('f', '') }
      it "returns 4" do
        expect(note.core_note_value()).to eq(4.0)
      end
    end
    
    context "given a note with letter name g" do
      let(:note) { Note.new('g', '') }
      it "returns 5" do
        expect(note.core_note_value()).to eq(5.0)
      end
    end
    
    context "given a note with letter name a" do
      let(:note) { Note.new('a', '') }
      it "returns 6" do
        expect(note.core_note_value()).to eq(6.0)
      end
    end
    
    context "given a note with letter name b" do
      let(:note) { Note.new('b', '') }
      it "returns 7" do
        expect(note.core_note_value()).to eq(7.0)
      end
    end
    
    context "given an invalid note name 'w'" do
      let(:note) { Note.new('w', '') }
      it "returns an error" do
        expect {note.core_note_value() }.to raise_error(NoteException)
      end
    end
  end
  
  describe ".sort_value without unique octave" do
    context "given FLAT note: aes" do
      let(:note) { Note.new('aes', '') }
      it "returns 45.5" do
        expect(note.sort_value).to eq(45.5)
      end
    end
  
    context "given SHARP note: fis" do
      let(:note) { Note.new('fis', '') }
      it "returns 44.5" do
        expect(note.sort_value).to eq(44.5)
      end
    end
  
    context "given double SHARP note: cisis" do
      let(:note) { Note.new('cisis', '') }
      it "returns 42.0" do
        expect(note.sort_value).to eq(42.0)
      end
    end
  
    context "given quadruple FLAT note: feseseses" do
      let(:note) { Note.new('feseseses', "") }
      it "returns 42.0" do
        expect(note.sort_value).to eq(42.0)
      end
    end
  end
  
  describe ".sort_value with unique octave" do
    context "given note with octave designation a'" do
      let(:note) { Note.new('a', '\'') }
      it "returns octave 50" do
        expect(note.sort_octave).to eq(50)
      end
    end
    
    context "given note with octave designation a" do
      let(:note) { Note.new('a', '') }
      it "sets the octave value as 40" do
        expect(note.sort_octave).to eq(40)
      end
    end
    
    context "given note with octave designation a," do
      let(:note) { Note.new('a', ',') }
      it "returns octave 30" do
        expect(note.sort_octave).to eq(30)
      end
    end
    
    context "given note with octave designation a,," do
      let(:note) { Note.new('a', ',,') }
      it "returns octave 20" do
        expect(note.sort_octave).to eq(20)
      end
    end
  end
  
  describe ".in_clef" do
    context "given note aes,," do
      let(:note) { Note.new('aes', ',,') }
      it "returns as bass clef" do
        expect(note.in_clef).to eq('bass')
      end
    end
    
    context "given note e''" do
      let(:note) { Note.new('e', "''") }
      it "returns as treble clef" do
        expect(note.in_clef).to eq('treble')
      end
    end
    
    context "given note c'" do
      let(:note) { Note.new('c', "'") }
      it "returns as bass clef" do
        expect(note.in_clef).to eq('bass')
      end
    end
    
    context "given note des'" do
      let(:note) { Note.new('des', "'") }
      it "returns as treble clef" do
        expect(note.in_clef).to eq('treble')
      end
    end
    
    context "given note deses'" do
      let(:note) { Note.new('deses', "'") }
      it "returns as bass clef" do
        expect(note.in_clef).to eq('bass')
      end
    end
    
    context "given note bisis" do
      let(:note) { Note.new('bisis', '') }
      it "returns as treble clef" do
        expect(note.in_clef).to eq('treble')
      end
    end
  end
end