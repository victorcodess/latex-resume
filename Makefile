MAIN = main
LATEXMK = latexmk

.PHONY: all pdf watch clean

all: pdf

pdf:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(MAIN).tex

watch:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(MAIN).tex

clean:
	$(LATEXMK) -C $(MAIN).tex
