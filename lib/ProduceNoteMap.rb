require_relative './Note.rb'

# testNote = Note.new("d", ",")
# puts "Core value: #{testNote.core_note_value}"

testNote = Note.new("e", "'")
puts "Core value: #{testNote.core_note_value}"
testNote.sort_value
puts "Sort value: #{testNote.sortValue}"
