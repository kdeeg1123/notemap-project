require 'Note'

describe Note do
  describe "sort notes (a , c , d, , e' , f'' a,)" do
    let(:note) { note = Note.new('a', '') }
    it "can be sorted into a sorted list: a, d, c a e' f''" do
      n1 = Note.new('a', '')
      n2 = Note.new('c', '')
      n3 = Note.new('d', ',')
      n4 = Note.new('e', "'")
      n5 = Note.new('f', "''")
      n6 = Note.new('a', ',')
      expectedResult = ["d,", "a,", "c", "a", "e'", "f''"]
      expect(NoteHelper::sort_notes_into_array(n1, n2, n3, n4, n5, n6)).to eq(expectedResult)
    end
  end
  
  describe "sort notes (a , c , d, , e' , f'' a,)" do
    let(:note) { note = Note.new('a', '') }
    it "can be sorted into a sorted list: a, d, c a e' f''" do
      n1 = Note.new('a', '')
      n2 = Note.new('c', '')
      n3 = Note.new('d', ',')
      n4 = Note.new('e', "'")
      n5 = Note.new('f', "''")
      n6 = Note.new('a', ',')
      expectedResult = ["d,", "a,", "c", "a", "e'", "f''"]
      objectArray = [n1, n2, n3, n4, n5, n6]
      expect(NoteHelper::sort_notes_in_array(objectArray)).to eq(expectedResult)
    end
  end
  
  describe "sort notes mixed with accidentals (gisisis'' , beses'' , ceseseseses'' , c, a , cis , deses , ees, , fisis,, , geses,,)" do
    let(:note) { note = Note.new('a', '') }
    it "can be sorted into a sorted list: " do
      n1 = Note.new('gisisis', "''")
      n2 = Note.new('beses', "''")
      n3 = Note.new('ceseseseses', "''")
      n4 = Note.new('a', '')
      n5 = Note.new('cis', '')
      n6 = Note.new('deses', '')
      n7 = Note.new('ees', ',')
      n8 = Note.new('fisis', ',,')
      n9 = Note.new('geses', ',,')
      objectArray = [n1, n2, n3, n4, n5, n6, n7, n8, n9]
      expectedResult = ["geses,,", "fisis,,", "ees,", "deses", "cis", "a", "ceseseseses''", "beses''", "gisisis''"]
      expect(NoteHelper::sort_notes_in_array(objectArray)).to eq(expectedResult)
    end
  end
end
