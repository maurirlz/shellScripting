# Brace expansion
  touch file{1..10}.txt # creates 10 files.
  mkdir students
  mkdir students/{A..Z} # create a file for each letter in the alphabet.
  echo {A..Z}{1..10} # nesting, A1, A2, A3... Z7, Z8, Z9
  echo {a,b,c}{a,b,c} # aa, ab, ac...
  echo Documents/my_images/{image.jpg, new.jpg} # don't need to write the path to a file two times.
  mv Documents/my_images/{image.jpg, new.jpg}

# wget download files from the internet
  wget https://files.example.org{001..5}.html | tr " " "\n";


# Recursive file operations with xargs
  echo file{1..10}.txt > reminder
  xargs touch < reminder

  find random/ -name '*.bak' -print0 | xargs -0 -p rm # find .bak files on the random dir and delete them.
  # -print0 adds a '\0' null character per lien to indicate end of string/line.
  # -0 args tell xargs to expect this null character so that it can pass it correctly to rm.
  # -p prompts a message in order to confirm this

# Checking for destructive operations
  rm -i # prompts confirmation for deleting a specific file.

# Opening files with external programs
  # on MacOS, use open.
  open image.jpeg
  