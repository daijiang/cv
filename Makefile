all: cv.pdf clean

cv.pdf: cv.tex
	xelatex -interaction nonstopmode cv
	# biber cv
	xelatex -interaction nonstopmode cv
	# xelatex -interaction nonstopmode cv

clean:
	rm *.aux *.log *.bbl *.out *.blg *.bcf *.xml

