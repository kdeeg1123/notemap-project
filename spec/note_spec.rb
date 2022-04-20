require 'Note'

describe Note do
  describe ".core_note_value" do
    context "given a note with letter name c" do
      let(:note) { Note.new('c', ',') }
      it "returns 1" do
        expect(note.core_note_value()).to eq(1)
      end
    end
    
    context "given a note with letter name d" do
      let(:note) { Note.new('d', ',') }
      it "returns 2" do
        expect(note.core_note_value()).to eq(2)
      end
    end
    
    context "given a note with letter name e" do
      let(:note) { Note.new('e', ',') }
      it "returns 3" do
        expect(note.core_note_value()).to eq(3)
      end
    end
    
    context "given a note with letter name f" do
      let(:note) { Note.new('f', ',') }
      it "returns 4" do
        expect(note.core_note_value()).to eq(4)
      end
    end
    
    context "given a note with letter name g" do
      let(:note) { Note.new('g', ',') }
      it "returns 5" do
        expect(note.core_note_value()).to eq(5)
      end
    end
    
    context "given a note with letter name a" do
      let(:note) { Note.new('a',',') }
      it "returns 6" do
        expect(note.core_note_value()).to eq(6)
      end
    end
    
    context "given a note with letter name b" do
      let(:note) { Note.new('b', ',') }
      it "returns 7" do
        expect(note.core_note_value()).to eq(7)
      end
    end
    
    context "given an invalid note name 'w'" do
      let(:note) { Note.new('w', ',') }
      it "returns an error" do
        expect(note.core_note_value()).to eq(0)
      end
    end
  end
end

