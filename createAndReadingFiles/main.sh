# make redirects to append by default instead of replacing the whole contents of a file.
  set -o noclobber

# touch, mkdir & rmdir
  mkdir a b
  cd a || echo "failed creating dir"
  touch file1 file2
  touch file[1] file[2]
  ls file\[*\] # in order to escape square brackets.
  ls 'file['*']' # alternative to escaping, can quote the whole thing.
  touch file\ name # you can escape spaces too.

# more and less
  more readme.md # writes to stdout.
  less readme.md # opens file on vi.

# head and tail
  head some_hile # shows first 10 lines of a file.
  head -n 2 # shows first 2 lines of a file.
  tail server.log # shows the last 10 lines of a file, useful for view logs
  tail -n 2 # shows last 2 lines of the file
  tail -f -n 2 # shows the last 2 lines of the file, live-reloading whatever change it had.

# Word count
  wc some_file # prints 12 29 148, first number is the line count, second number is word count and third is size in bytes.
  wc -l some_file # -l show only lines
  find . -name '*.jpg' | wc -l # searches for glob and pipes the result into wc, given us the number of files ending with .jpg

# Pipes
  # file decryptor: 0: stdin, 1: stdout, 2: stderr
  cat current_files 1> to_another_file.txt # concatenates all the contents of current files and sends the result to to_another_file
  ls [*].jpg 2> error.txt # generate error due to confusing glob not escaping brackets and pipes down stderr to error.txt
  # Appending content from stdout to a file
  echo "line 1" >> lines
  echo "line 2" >> lines
  echo "line 3" >> lines
  # or
  echo { echo 'line4'; echo 'line5' } >> lines

  # using cat to write to a file
  cat > file.txt # can write to a file without using vim yay!

  # sends results of ls -l to less
  ls -l | less
  echo "linus torvalds" > linux > penguins > /dev/tty # available on ZSH, otherwise must use tee. /dev/tty represents terminal
  echo "linus torvalds" | tee linux | tee torvalds
  cat < linux < programmers > combined # zsh-only, grab the contents of linux and programmers, pass it to cat, print it on the therminal and send the contents to combined
  