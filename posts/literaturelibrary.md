[Home](../index.html)\
[Notes](../blog.html)

# Organizing my references

For a while I was keeping all of my downloaded papers and books (all PDF format)
in one large directory called `Literature`, where I name the document
`[FirstAuthorLastName][Year]_[other stuff].pdf` where `[other stuff]` could be
things like the name the journal gave the file when distributing it.]

Well today I had over 500 files in that folder, and loading it in my file
browser was becoming slow. 

So I wanted to creat subdirectories which simlpy organized by author, with one
directory per letter. Here's how I did that with a few linux commands.

First, I capitolized all the file names:
```bash
rename -n 's/./\U$&/' *
```
The `-n` will print what the rename command intends to do. Remove it to actually
perform the renaming. 

Second, I created directories with names A-Z:
```bash
mkdir {A..Z}
```

Third and finally, for each letter I moved all files begining with that letter
into the corresponding directory:
```bash
for f in {A..Z}; do mv $f* $f/; done
```
Now I only have 26 items in the main directory, except for files yet to be
sorted, and things load much faster.
