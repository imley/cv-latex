all: cv_cn.pdf cv.pdf

cn: cv_cn.pdf

en: cv.pdf

cv_cn.pdf: cv_cn.tex
	-xelatex -output-format=pdf cv_cn.tex

cv.pdf: cv.tex
	-latex -output-format=pdf cv.tex

clean:
	rm -f *.pdf
	rm -f *.dvi
	rm -f *.log
	rm -f *.aux
	rm -f *.out
