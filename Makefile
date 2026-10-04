MAIN = resume/main
COVER = cover-letters/coverletter
BLOOMBERG = cover-letters/coverletter-bloomberg
LATEXMK = latexmk

.PHONY: all pdf watch coverletter watch-coverletter bloomberg watch-bloomberg clean

all: pdf

pdf:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(MAIN).tex

watch:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(MAIN).tex

coverletter:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(COVER).tex

watch-coverletter:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(COVER).tex

bloomberg:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(BLOOMBERG).tex

watch-bloomberg:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(BLOOMBERG).tex

clean:
	$(LATEXMK) -C $(MAIN).tex
	$(LATEXMK) -C $(COVER).tex
	$(LATEXMK) -C $(BLOOMBERG).tex
