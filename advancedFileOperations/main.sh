# Links
# links are just pointers to a file/dir
  touch students.txt students_link.txt
  ln students students_link
  ls -l st* # number after permissions represents how many hard links does the file have
  ls -i st* # list by inode number, both files have the same inode number.
  ln -s students_link students_link # symlinks are just files that contain the same name as another file

# Search with grep
  grep -wi 'home' file # -i case insensitive, -w to make the regexp match the exact word 'home'
  grep -ril 'home' dir # -r for recursively search the word home, -l in order to format the output to match
  # the files that contain them instead of also the lines where that word is found.

# transforming text with SED (stream-editor)
# modifies files based on an input stream, a pattern space, a hold buffer and an output stream.
  touch quotes
  sed -in '' 's/idea/pidgeons/p' quotes
  # empty quote since macOS sed requires to specify the file extension
  # s marks a replace operation, idea is the word that will be replaced and pidgeions is
  # word that will replace the previous word.
  # /p tells sed to print the lines that were modified in the pattern space.
  # -n makes the output non-verbose
  # -i replaces the whole file with what was replaced on the pattern space.
  sed -n '' '/Tesla/{g;p}; h' quotes
  # h makes it so every command is send from the pattern space to the hold buffer
  # if line contains Tesla, then execute g, which sends the pattern from the hold buffer into the pattern space
  # then print it (due to p)

# AWK
# simple interpreter programming language
# makes operations in a line by line basis
# note: expression makes it so the code on the main block is executed only if that input
# matches the expression:
  #  awk
  #  'BEGIN {
  #    print "executes before everything"
  #  }
  #  /expression/ {
  #   print "executes on each line from the input stream"
  #  }
  #  END {
  #    print "executes after everything"
  #  }'
  #  filename
  awk 'BEGIN { print "the printing has begun } /home/ { print } END {print "The printing has ended" }'
  awk '{ print $2 } ' ../files/awkGrades.txt # prints the second string of each line