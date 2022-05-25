require 'Note'

describe Note do
  describe ".core_note_value" do
    context "given a note with letter name c" do
      let(:note) { Note.new('c', ',') }
      it "returns 1" do
        expect(note.core_note_value()).to eq(1.0)
      end
    end
    
    context "given a note with letter name d" do
      let(:note) { Note.new('d', ',') }
      it "returns 2" do
        expect(note.core_note_value()).to eq(2.0)
      end
    end
    
    context "given a note with letter name e" do
      let(:note) { Note.new('e', ',') }
      it "returns 3" do
        expect(note.core_note_value()).to eq(3.0)
      end
    end
    
    context "given a note with letter name f" do
      let(:note) { Note.new('f', ',') }
      it "returns 4" do
        expect(note.core_note_value()).to eq(4.0)
      end
    end
    
    context "given a note with letter name g" do
      let(:note) { Note.new('g', ',') }
      it "returns 5" do
        expect(note.core_note_value()).to eq(5.0)
      end
    end
    
    context "given a note with letter name a" do
      let(:note) { Note.new('a',',') }
      it "returns 6" do
        expect(note.core_note_value()).to eq(6.0)
      end
    end
    
    context "given a note with letter name b" do
      let(:note) { Note.new('b', ',') }
      it "returns 7" do
        expect(note.core_note_value()).to eq(7.0)
      end
    end
    
    context "given an invalid note name 'w'" do
      let(:note) { Note.new('w', ',') }
      it "returns an error" do
        expect(note.core_note_value()).to eq(0)
      end
    end
  end
  
  describe ".sort_value" do
    context "given FLAT note: aes" do
      let(:note) { Note.new('aes', ',') }
      it "returns 4.5" do
        expect(note.sort_value).to eq(5.5)
      end
    end
  end
  
  describe ".sort_value" do
    context "given SHARP note: fis" do
      let(:note) { Note.new('fis', ',') }
      it "returns 4.5" do
        expect(note.sort_value).to eq(4.5)
      end
    end
  end
  
  describe ".sort_value" do
    context "given double SHARP note: cisis" do
      let(:note) { Note.new('cisis', "'") }
      it "returns 1.75" do
        expect(note.sort_value).to eq(2.0)
      end
    end
  end
  
  describe ".sort_value" do
    context "given quadruple FLAT note: feseseses" do
      let(:note) { Note.new('feseseses', ",") }
      it "returns 2.0" do
        expect(note.sort_value).to eq(2.0)
      end
    end
  end
end

