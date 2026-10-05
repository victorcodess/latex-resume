MAIN = resume/main
COVER = cover-letters/coverletter
BLOOMBERG = cover-letters/coverletter-bloomberg
STATEMENT = applications/template
SALFORD = applications/salford/personal-statement
REFERENCE = applications/salford/reference
COVENTRY = applications/coventry/personal-statement
COVENTRY_REFERENCE = applications/coventry/reference
PORTSMOUTH = applications/portsmouth/personal-statement
PORTSMOUTH_REFERENCE = applications/portsmouth/reference
GREENWICH = applications/greenwich/personal-statement
GREENWICH_REFERENCE = applications/greenwich/reference
CHESTER = applications/chester/personal-statement
CHESTER_REFERENCE = applications/chester/reference
EAST_LONDON = applications/east-london/personal-statement
EAST_LONDON_REFERENCE = applications/east-london/reference
MIDDLESEX = applications/middlesex/personal-statement
MIDDLESEX_REFERENCE = applications/middlesex/reference
LATEXMK = latexmk

.PHONY: all pdf watch coverletter watch-coverletter bloomberg watch-bloomberg statement watch-statement salford watch-salford reference watch-reference coventry watch-coventry coventry-reference watch-coventry-reference portsmouth watch-portsmouth portsmouth-reference watch-portsmouth-reference greenwich watch-greenwich greenwich-reference watch-greenwich-reference chester watch-chester chester-reference watch-chester-reference east-london watch-east-london east-london-reference watch-east-london-reference middlesex watch-middlesex middlesex-reference watch-middlesex-reference clean

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

statement:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(STATEMENT).tex

watch-statement:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(STATEMENT).tex

salford:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(SALFORD).tex

watch-salford:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(SALFORD).tex

reference:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(REFERENCE).tex

watch-reference:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(REFERENCE).tex

coventry:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(COVENTRY).tex

watch-coventry:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(COVENTRY).tex

coventry-reference:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(COVENTRY_REFERENCE).tex

watch-coventry-reference:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(COVENTRY_REFERENCE).tex

portsmouth:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(PORTSMOUTH).tex

watch-portsmouth:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(PORTSMOUTH).tex

portsmouth-reference:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(PORTSMOUTH_REFERENCE).tex

watch-portsmouth-reference:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(PORTSMOUTH_REFERENCE).tex

greenwich:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(GREENWICH).tex

watch-greenwich:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(GREENWICH).tex

greenwich-reference:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(GREENWICH_REFERENCE).tex

watch-greenwich-reference:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(GREENWICH_REFERENCE).tex

chester:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(CHESTER).tex

watch-chester:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(CHESTER).tex

chester-reference:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(CHESTER_REFERENCE).tex

watch-chester-reference:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(CHESTER_REFERENCE).tex

east-london:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(EAST_LONDON).tex

watch-east-london:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(EAST_LONDON).tex

east-london-reference:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(EAST_LONDON_REFERENCE).tex

watch-east-london-reference:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(EAST_LONDON_REFERENCE).tex

middlesex:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(MIDDLESEX).tex

watch-middlesex:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(MIDDLESEX).tex

middlesex-reference:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(MIDDLESEX_REFERENCE).tex

watch-middlesex-reference:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(MIDDLESEX_REFERENCE).tex

clean:
	$(LATEXMK) -C $(MAIN).tex
	$(LATEXMK) -C $(COVER).tex
	$(LATEXMK) -C $(BLOOMBERG).tex
	$(LATEXMK) -C $(STATEMENT).tex
	$(LATEXMK) -C $(SALFORD).tex
	$(LATEXMK) -C $(REFERENCE).tex
	$(LATEXMK) -C $(COVENTRY).tex
	$(LATEXMK) -C $(COVENTRY_REFERENCE).tex
	$(LATEXMK) -C $(PORTSMOUTH).tex
	$(LATEXMK) -C $(PORTSMOUTH_REFERENCE).tex
	$(LATEXMK) -C $(GREENWICH).tex
	$(LATEXMK) -C $(GREENWICH_REFERENCE).tex
	$(LATEXMK) -C $(CHESTER).tex
	$(LATEXMK) -C $(CHESTER_REFERENCE).tex
	$(LATEXMK) -C $(EAST_LONDON).tex
	$(LATEXMK) -C $(EAST_LONDON_REFERENCE).tex
	$(LATEXMK) -C $(MIDDLESEX).tex
	$(LATEXMK) -C $(MIDDLESEX_REFERENCE).tex
