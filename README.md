# SCBI Temperate Forest Dynamics Plot
Repository for ForestGEO-SCBI plot book.

## Organization
- Chapters: Each chapter is represented by its own, numbered .Rmd file, and this is where editing takes place. Instructions on how to do this are below. Chapters are in numerical order, so 01-Introduction = Chapter 1: Introduction.

- [docs folder](https://github.com/SCBI-ForestGEO/SCBI-Plot-Book/tree/master/docs): This is where the html (web) files of the book are stored when R renders the .Rmd files together.

- All other files: Other files including .yml and .bib are important for the overall structure of the book in the R code.

## How to Edit Chapters
*This assumes you are working in the context of local files via Github desktop*

Each chapter is separated into a different Rmarkdown (.Rmd) file. Opening this will open it to an R-console, from where you can add and edit data, before reviewing how it looks on html.

1. Open the .Rmd you want to work on (make sure to fetch origin first from Github desktop!).

2. Edit the file and save.

3. Adding an image: make sure your working directory is "localpath/Github/SCBI-Plot-Book". Let's say I have an image in the "maps" folder. To add it in the chapter, I simply put in  \!\[captionofmap](maps/file_name.jpg) and a blank box is inserted beneath my script. To see what this looks like in the actual book, follow Step 5 below.

- to see other ways of inserting images or other tables, see [Bookdown cheatsheet](http://www.pzhao.org/en/post/bookdown-cheatsheet/) (also below under Resources).

## How to Add/Edit Citations

Citations are can be made in two ways. The easier way is via Zotero.

**As with all edits, please make sure you've fetched origin and your local files are updated before making/committing changes.**

### Create the citation with Zotero

1. Install [Zotero](https://www.zotero.org/download/) for desktop and the plug-in for Chrome (if not using Chrome, that's ok. It will just take a little bit more effort).

2. Open  Zotero application (not the plugin)
- Click on 'file' -> 'import' -> 'next >'
- Select 'book.bibtex' file (extension is 'bibtex document')
- Make sure to check the 'Place imported collections...' box and click 'next >'
**Important**: Because Zotero automatically saves reference lists you make, you must import to a new collection every time you open, and only work out of that collection. Zotero will say you have duplicates, but that's because it's saving your first list you opened, and it doesn't automatically udpate from Github.
- Once you've imported to a new collection, you can just delete the old collection to avoid confusion when you're working

3. Add a citation either from the plug-in (super easy, just click on the icon when you're on the article or web page you wish to cite) or via manual entry.

4. Review the fields to make sure data is correct. Please remove abstract if automatically populated.

5. When done adding citations, order them by "Creator". 
**IMPORTANT** Select all your items in the collection, right click, and select *Export Items*. Change format to *BibTex* and make sure *Export Notes* is checked.

6. Save the file as **book.bibtex** and overwrite existing one.
- When looking to see if the file has been saved, the name of the file may show up as 'book.'

7. If you want to see how Bookdown views the file, open book.bib in RStudio. The file will now have your citation looking like this:

       @article{stovall_assessing_2018,
         title = {Assessing terrestrial laser scanning for developing non-destructive biomass allometry},
	        volume = {427},
	        issn = {0378-1127},
	        url = {http://www.sciencedirect.com/science/article/pii/S0378112718304663},
	        doi = {10.1016/j.foreco.2018.06.004},
	        urldate = {2018-11-26},
	        journal = {Forest Ecology and Management},
	        author = {Stovall, Atticus E. L. and Anderson-Teixeira, Kristina J. and Shugart, Herman H.},
	        month = nov,
	        year = {2018},
	        keywords = {Carbon, Forest structure, Large trees, Quantitative structure models, Sample size, Scaling theory, Terrestrial LiDAR},
	        pages = {217--229},
	        file = {ScienceDirect Full Text PDF:C\:\\Users\\mcgregori\\Zotero\\storage\\DP7LXP7I\\Stovall et al. - 2018 - Assessing terrestrial laser scanning for developin.pdf:application/pdf;ScienceDirect Snapshot:C\:\\Users\\mcgregori\\Zotero\\storage\\I4JV9V4V\\S0378112718304663.html:text/html}
        }

- for reference, this citation is from [this article](https://www.sciencedirect.com/science/article/pii/S0378112718304663). The `file =` part is irrelevant. That's just Zotero saving a local copy of the article pdf.

### Create the citation manually

If Zotero isn't working, citations can also be made manually. To do this, open the book.bib file in RStudio, and add the information for your citation. Use the [BibTex documentation] link below for guidance.
- your citation should also look like Step 7 above (the `file =` part is irrelevant).

### Cite the citation in-text

8. In the citation above, the relevant part for in-text citing is the very first part of the code. Above the `title` is a character string called the "citation key". This is the text you write to tell Bookdown to generate a citation.

9. For example, there is a sentence from this article: "Trees are good." To cite this article, I use \[@citation key] (see the [markdown] link below for other variations]. In the .Rmd file, I would write `Trees are good [@stovall_assessing_2018].` When the book is knit or rendered, Bookdown automatically converts this to:

`Trees are good (Stovall, Anderson-Teixeira, and Shugart 2018).` with the following reference appended to the text:

`Stovall, Atticus E. L., Kristina J. Anderson-Teixeira, and Herman H. Shugart. 2018. “Assessing Terrestrial Laser Scanning for Developing Non-Destructive Biomass Allometry.” Forest Ecology and Management 427 (November): 217–29. doi:10.1016/j.foreco.2018.06.004.`

- Helpfully, the year automatically links to the full appended reference.

### Reference Order

References in each chapter are ordered by appearance in the text.

References for the whole book (in the final book chapter) are ordered alphabetically by author.

### References for how to make a citation:

Exporting from Zotero: [UniMelbourne](http://unimelb.libguides.com/c.php?g=565734&p=3897111)

Manual citation entry in book.bib: [BibTex documentation](https://en.wikipedia.org/wiki/BibTeX)

Bookdown info for citations: [Yihui](https://bookdown.org/yihui/bookdown/citations.html)

Markdown syntax for in-text citations (and other info): [markdown](https://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html)

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