# ls piping to less
ls | less;

# grep searches a string on a file.
# | pipe
# searches for 1978 string on test.txt, pipes the result to sort in order
# to sort it and then redirects all data to a new file
grep 1978 test.txt | sort > sorted_list.txt

# From oscars.tsv cut out the first third columns, search all the lines that have '4' and pass that list to wc
# which counts lines with the flag -l, can also use grep -c 4
cut -f 3 oscars.tsv | grep 4 | wc -l # | grep -c 4

## moves all .jpg to pictures and all .txt to text
touch a.jpg, b.jpg, c.txt, d.txt
mkdir pictures text
mv ./*txt text && mv ./*jpg pictures