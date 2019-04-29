# How-to add/edit citations

Citations are can be made in two ways. The easier way is via Zotero.

**As with all edits, please make sure you've fetched origin and your local files are updated before making/committing changes.**

## Create the citation with Zotero

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

## Create the citation manually

If Zotero isn't working, citations can also be made manually. To do this, open the book.bib file in RStudio, and add the information for your citation. Use the [BibTex documentation] link below for guidance.
- your citation should also look like Step 7 above (the `file =` part is irrelevant).

## Cite the citation in-text

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
