# chmod
  touch file
  chmod u+rw # gives 'user' permission to read and write to file
  chmod g+rw # gives 'group' permission to read and write
  chmod o+rw # gives 'others' permission to read and write
  chmod a+rw # gives 'all' permission to read and write
  # -rw-r--r--
  ls -l file # 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 signals the type of while, 2 the read permission, 3 the write permission, 4 the executable, for the user.
  # 5 signals group read permission, 6 group write permission, 7 group executable permission on the file
  # 8 signals others read permission, 9 others write permission, finally 10 signals others executable permission
  # you can use binary format in order to give permissions to all the hierarchy by replacing a permission with 1 in case
  # you want to assign permissions to that particular field
  chmod 100100100 # gives read permissions to all the hierarchy.

# umask
# unix default permissions are 110110110 (666) for files and 111111111 (777) for directory permissions
# umask let us set the default permissions for each type of file.

# Glob qualifiers
  ls -l *(U) # filters files based on current user
  ls -l *(u:anotheruser:) # filters files based on another user
  ls -l *(^u:anotheruser:) # filters files based on anotheruser not having permissions for those files.
  ls -l *(g:group:) # filters based on group
  # Filters based on owner ability to read that file
    ls -l *(r)
  # Filters based on owner ability to execute that file
    ls -l *(x)
  # uppercase letters for the permission represents the 'others' group
    ls -l *(W) ls -l *(R) ls -l *(X)
  # For group permissions, we use A for group read permission, I for group write permission and E for executable
  # permissions between that group
  ls -l *(A) # filters files based on the ability of the current group to read that file.

# Special file permissions (SUID, SGID, sticky bit)
  touch testFile.txt
  chmod 7777 testFile.txt # generates a file with special permissions shown, s S and t which replaces the same places
  # that the x permission was located.
  # SUID = can execute that file as the file owner.
  # SGID = run file as member of that file's group, on a dir, all of the created files inside that dir will have
  # the group set as the dir's group.
  # sticky bit = only on dirs, makes the files inside of that dir to be removed/edited only by the owner.

# Copying with cp
  touch copyFile.txt
  cp copyFile.txt anotherCopy.txt
  # copying entire dir with contents
  mkdir important/ important/importantDir_1 importantDir_2 # assume this have files on it
  cp -r important/* ~/backup # creates backup folder and copy everything from the important folder

# Backing up with rsync
  # rsync synchronizes the contents of a dir with another dir.
  mkdir ~/songs && touch ~/songs/1.mp3, ~/songs/2.mp3, ~/songs/3.mp3
  mkdir ~/songsBackup
  rsync -r ~/songs ~/songsBackup
  rsync -a ~/songs ~/songsBackup # -a stand for archive, which basically backups the entire folder with its permissions.
  rsync -vn ~/songs ~/songsBackup # -n dry-run: performs a trial run and doesn't make any changes. -v is for verbose.
  rsync --delete arg1 arg2 # deletes arg1 after synchronizing with arg2.
