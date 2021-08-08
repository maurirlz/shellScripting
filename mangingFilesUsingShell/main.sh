# Set auto cd, don't need to specify cd on a change directory action.
  setopt auto_cd

# Make multiple globs matching possible instead of failing if one cannot be expanded.
  setop csh_null_glob

# extended globbing enabling
  shopt -s extglob

# ls
  ls -la # hidden files
  ls -lt # sort by time
  ls -ltr # reverses the sorting from -t flag
  ls -lS # sort by size
  ls -lSr # sort by size reversed

  # globbing
  ls -d D* # matches all files starting with D
  ls ./*.* # matches all files that have a dot and everything after it
  ls ./*.?* # ? character matches a single character, in this case, this glob will match every fail that has a followup
            # after the dot.
  ls [abc]* # get all the files that start with the range provided.
  ls [A-Z]*[a-z] # get all the files that start with uppercase and ends with lowercase.
  ls file[1-4]* # range can have numbers too.
  ls [A-Eabc]* # list all the files that start with any letter on range A-E or abc.
  ls [^A-Eabc] # caret character negates the whole expression.
  ls [mn]*(jpg|mp4|png) # list all the files that start with m or n and ends with any of the group provided (or case)

  # extended globbing
  ls [mn]*@(jpg|mp4|png) # same as above
  ls *(.) # only regular files shown
  ls -ld *(/) # only show dirs
  ls *(*) # show exe files
  ls *(@) # show symlinks
  ls -ldh *(Lk+2) # show all files greater than 2kbs using extended globbing

  # locating files