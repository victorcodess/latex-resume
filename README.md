# Resume

LaTeX resume for Victor Williams, built with the [treyhunner/resume](https://github.com/treyhunner/resume) document class.

## Prerequisites

Install a TeX distribution:

```bash
# macOS (full install, ~4 GB)
brew install --cask mactex

# macOS (minimal install, ~100 MB)
brew install basictex
sudo tlmgr update --self
sudo tlmgr install latexmk collection-fontsrecommended
```

## Build

```bash
make        # build PDF
make watch  # rebuild on save
make clean  # remove build artifacts
```

Output is written to `main.pdf`.

## Structure

```
main.tex      Resume content
resume.cls    Document class (name, address, rSection)
Makefile      Build commands
```
