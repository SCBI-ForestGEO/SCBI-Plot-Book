# A Look at the Plants that make up the Smithsonian's Blue Ridge Ecoregion
Repository for ForestGEO-SCBI plot book.

## Organization
- Chapters: Each chapter is represented by its own, numbered .Rmd file, and this is where editing takes place. Instructions on how to do this are below. Chapters are in numerical order, so 01-Introduction = Chapter 1: Introduction.

- [\_book folder](https://github.com/SCBI-ForestGEO/SCBI-Plot-Book/tree/master/_book): This is where the html (web) files of the book are stored when R renders the .Rmd files together.

- All other files: Other files including .yml and .bib are important for the overall structure of the book in the R code.

## How to Edit Chapters
*This assumes you are working in the context of local files via Github desktop*

Each chapter is separated into a different Rmarkdown (.Rmd) file. Opening this will open it to an R-console, from where you can add and edit data, before reviewing how it looks on html.

1. Open the .Rmd you want to work on (make sure to fetch origin first from Github desktop!).

2. Edit the file and save.

3. Adding an image: make sure your working directory is "localpath/Github/SCBI-Plot-Book". Let's say I have an image in the "maps" folder. To add it in the chapter, I simply put in  \!\[captionofmap](maps/file_name.jpg) and a blank box is inserted beneath my script. To see what this looks like in the actual book, follow Step 5 below.

- to see other ways of inserting images or other tables, see [Bookdown cheatsheet](http://www.pzhao.org/en/post/bookdown-cheatsheet/) (also below under Resources).

## Updating the book

First and foremost, install Knit and bookdown. Then set your working directory accordingly for this repo.
       
       install.packages("knitr", "bookdown")
       setwd("localpath/Github/SCBI-Plot-Book")

There are two ways of updating.

### Updating your chapter via Knitting

The first, and easiest way, is via the "Knit" function.

4. Once knitr is installed, a ball of yarn with a needle will appear on the banner of your .Rmd script in RStudio. 

5. When you want to update the chapter (**or, view a preview of what the chapter will look like online**), select "Knit". This will simultaneously save the .Rmd file and update your chapter's html file as well. A blank window will pop up, then select "Open in Browser."

6. Running the Knit function will apply the same code as below in Step 7 with the same outputs. The differences are that Knit will automatically open a prompt to view the updated file, *and* it will only update the specific chapter you're working on.

### Updating the whole book (including your new chapter)

The second way of updating is by putting together all the elements of the book and updating them all at once (called rendering).

7. Run the following command to put the book together (known as "rendering").

       bookdown::render_book("index.Rmd")

8. Your ouput will look something like this:

       processing file: _main.Rmd
        |.................................................................| 100%
        ordinary text without R code
       output file: _main.knit.md

       "C:/Program Files/RStudio/bin/pandoc/pandoc" +RTS -K512m -RTS _main.utf8.md --to html4 --from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash --output _main.html --smart --email-obfuscation none --standalone --section-divs --table-of-contents --toc-depth 3 --template "C:\Users\mcgregori\Documents\R\win-library\3.5\bookdown\templates\gitbook.html" --highlight-style pygments --number-sections --css style.css --include-in-header "C:\Users\MCGREG~1\AppData\Local\Temp\14\Rtmp8WwPNp\rmarkdown-str397c787bde.html" --mathjax --filter pandoc-citeproc 

       Output created: _book/introduction.html
       [1] "localpath/Github/SCBI-Plot-Book/_book/introduction.html"
       Warning message:
       In split_chapters(output, gitbook_page, number_sections, split_by,  :
          You have 7 Rmd input file(s) but only 6 first-level heading(s). Did you forget first-level headings in certain Rmd files?

9. The important part is "Output created." This means the html files have been updated and are in the \_book folder. The warning message refers to the lack of a header (H1 #) in the index.Rmd. This is fine.

10. From your local Github folder on your computer, you can now open the html file associated with your edited chapter and review how it looks.

11. When finished, please remember to commit and push back to Github. When pushing after doing the rendering command, you'll notice there are several changed files that have a .css, .js, and .json extensions. These refer to the elements of the web visualization and as such are necessary to be pushed as well.

## Resources

- Save [ideas](https://github.com/SCBI-ForestGEO/SCBI-Plot-Book/blob/master/ideas.md), scripts for mapping, chapters, references, etc

- [Bookdown cheatsheet](http://www.pzhao.org/en/post/bookdown-cheatsheet/) --> this is good for knowing how to insert figures 

- [Full bookdown guide](https://bookdown.org/yihui/bookdown/)
- [This guide](https://bookdown.org/yihui/rmarkdown/) is great to understand the technical details behind a bookdown 'book'
- [Here](https://github.com/dr-harper/rmarkdown-cookbook) is an example of book in progress using Rmarkdown.
- These are [guidelines](https://github.com/forestgeo/fgeo.tool) for the `fgeo` R package from Mauro that we will use to build species maps, summarize species demography, etc.. 