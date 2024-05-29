The NoteMap-Project is used to identify all notes used within a [Lilypond](http://lilypond.org/) \score (most utilized for handbell scores to indicate which naturals/accidentals are used within a piece)

**Usage**: To create a map of all notes used in a lilypond score

`ruby ./CreateNotemapFromLY.rb [options] <lilypond_file.ly>`

**Options**:
- `-h [help]`: Displays the help information
- `-l [output Lilypond file]`: Outputs the used notes in a Lilypond format in the `LilypondFormat.txt` file


**RSpec**: RSpec tests must be run from the root project folder (i.e. `rspec spec/<rspec_filename>.rb`)


