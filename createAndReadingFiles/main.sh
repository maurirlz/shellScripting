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