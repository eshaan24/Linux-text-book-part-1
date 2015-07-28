#[Getting-Started](http://pandoc.org/getting-started.html)

#delete previous build artifacts but not the README.md
rm ./output/pdf/*.pdf
rm ./output/epub/*.epub
rm ./output/html/*.html
rm ./output/docx/*.docx

#If you want to create a PDF, you’ll need to have LaTeX installed. (See MacTeX on OS X, MiKTeX on Windows, or install the texlive package in linux.) Then do
pandoc --toc --chapters -V geometry:margin=1in --number-sections -s -o ./output/pdf/Understanding-the-Technology-and-Philosophy-of-Linux-Part-I.pdf ./title/title.txt ./Introduction/introduction.md ./Chapter-01/chapter-01.md ./Chapter-02/chapter-02.md ./Chapter-03/chapter-03.md ./Chapter-04/chapter-04.md ./Chapter-05/chapter-05.md ./Chapter-06/chapter-06.md ./Chapter-07/chapter-07.md ./Chapter-08/chapter-08.md ./Chapter-09/chapter-09.md ./Chapter-10/chapter-10.md ./Chapter-11/chapter-11.md ./Chapter-12/chapter-12.md ./Chapter-13/chapter-13.md ./Chapter-14/chapter-14.md ./Chapter-15/chapter-15.md ./Glossary-A/Glossary-A.md ./Glossary-B/Glossary-B.md 
# http://stackoverflow.com/questions/19397100/adding-a-title-page-page-headers-and-footers-using-pandoc

#To convert it to EPUB, use this command:
pandoc --toc --number-sections -S -o ./output/epub/Understanding-the-Technology-and-Philosophy-of-Linux-Part-I.epub ./title/title.txt ./Introduction/introduction.md ./Chapter-01/chapter-01.md ./Chapter-02/chapter-02.md ./Chapter-03/chapter-03.md ./Chapter-04/chapter-04.md ./Chapter-05/chapter-05.md ./Chapter-06/chapter-06.md ./Chapter-07/chapter-07.md ./Chapter-08/chapter-08.md ./Chapter-09/chapter-09.md ./Chapter-10/chapter-10.md ./Chapter-11/chapter-11.md ./Chapter-12/chapter-12.md ./Chapter-13/chapter-13.md ./Chapter-14/chapter-14.md ./Chapter-15/chapter-15.md ./Glossary-A/Glossary-A.md ./Glossary-B/Glossary-B.md 
 
#To convert it to HTML, use this command:

pandoc --toc -S -f markdown -t html5 -o ./output/html/Understanding-the-Technology-and-Philosophy-of-Linux-Part-I.html ./title/title.txt ./Introduction/introduction.md ./Chapter-01/chapter-01.md ./Chapter-02/chapter-02.md ./Chapter-03/chapter-03.md ./Chapter-04/chapter-04.md ./Chapter-05/chapter-05.md ./Chapter-06/chapter-06.md ./Chapter-07/chapter-07.md ./Chapter-08/chapter-08.md ./Chapter-09/chapter-09.md ./Chapter-10/chapter-10.md ./Chapter-11/chapter-11.md ./Chapter-12/chapter-12.md ./Chapter-13/chapter-13.md ./Chapter-14/chapter-14.md ./Chapter-15/chapter-15.md ./Glossary-A/Glossary-A.md ./Glossary-B/Glossary-B.md 

#[Convert your Markdown file to Word (docx):](http://bob.yexley.net/generate-a-word-document-from-markdown-on-os-x/)
pandoc --toc -o ./output/docx/Understanding-the-Technology-and-Philosophy-of-Linux-Part-I.docx -f markdown -t docx ./title/title.txt ./Introduction/introduction.md ./Chapter-01/chapter-01.md ./Chapter-02/chapter-02.md ./Chapter-03/chapter-03.md ./Chapter-04/chapter-04.md ./Chapter-05/chapter-05.md ./Chapter-06/chapter-06.md ./Chapter-07/chapter-07.md ./Chapter-08/chapter-08.md ./Chapter-09/chapter-09.md ./Chapter-10/chapter-10.md ./Chapter-11/chapter-11.md ./Chapter-12/chapter-12.md ./Chapter-13/chapter-13.md ./Chapter-14/chapter-14.md ./Chapter-15/chapter-15.md ./Glossary-A/Glossary-A.md ./Glossary-B/Glossary-B.md 

# extra for debugging
cp  C:\Users\palad\Documents\Linux-text-book-part-1\output\pdf\*.pdf  C:\Users\palad\OneDrive\Documents\epub
cp  C:\Users\palad\Documents\Linux-text-book-part-1\output\epub\*.epub  C:\Users\palad\OneDrive\Documents\epub

#[Convert to epub](http://pandoc.org/epub.html)
#pandoc ./Chapter-Table-of-Contents/chapter-toc.md ./Introduction/introduction.md ./Chapter-01/chapter-01.md -o ./output/Linux-Technology-and-Philosophy-Part-II.epub

# ODT demo http://pandoc.org/demos.html
#pandoc ./Chapter-Table-of-Contents/chapter-toc.md ./Introduction/introduction.md ./Chapter-01/chapter-01.md -o ./output/Linux-Technology-and-Philosophy-Part-II.odt
