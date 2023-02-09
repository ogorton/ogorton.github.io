[Home](../index.html)\
[Notes](../blog.html)

# How I make this website

I host this simple text-based website on GitHub Pages. In other words, all of
the source material for this site lives in a GitHub repository, and I have
GitHub pages enabled, which turns "myusername.github.io" into a public web page
using the content store there.

The simplest way to do this is just to add a README.md markdown file, and GitHub
will automatically turn it into a simple web page. Going one step further, you
can add a `_config.yml` file to set a Jekyll theme for your page.

I used this option for a while, but eventually wanted a little more control over
the layout and formatting. In particular, I wanted to make sure that I could
render $\text{\LaTex}$ equations.

The approach I settled on is the following:

1. All of my content is written in markdown, with a spattering of $\LaTex$  and
   `<html>` code.
2. I run a simple script (shared below) which runs `pandoc` commands to
   compile all of my markdown content into html
3. I push the changes to GitHub and my site is automatically updated!

The script I use to compile my site into html simply searches for all of my .md
files in the top directory of the project and runs a pandoc command on it.
```
for f in ./*md ./*/*md ; do pandoc --mathjax -s -c style.css --metadata \
  title="Oliver Gorton" --variable=title="" "$f" -o "${f//md/html}" ; done
```

The `mathjax` command is necessary to enable $\LaTex$ equations. The `-s`
command makes a standalone html page, automatically adding headers, etc. I also
set two meta data fields to have page titles in your browser, but not on the
page. Finally, I use a custom css template. This requires the `style.css` file,
which is just a modified css template I found online.
