FILES=$(cardito build -f main.ito -t util.ito)
echo $FILES

for svg in $FILES;
do
	pdfout=${file%.svg}.pdf
	inkscape --export-type=pdf $svg 
done

PDFS=${FILES//.svg/.pdf} 

echo $PDFS
pdfunite $PDFS all_cards.pdf
