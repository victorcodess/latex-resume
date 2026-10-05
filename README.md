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
make watch  # rebuild on save (opens PDF in Preview on each build)
make clean  # remove build artifacts
```

Output is written next to each source file, including `resume/main.pdf` and the PDFs under `cover-letters/` and `applications/`.

### PDF not updating in Cursor?

`make watch` **is** rebuilding the file — check the terminal for `Output written on main.pdf`.

Cursor's built-in PDF preview does **not** auto-reload when the file changes on disk. To see updates:

1. **Close and reopen** the `resume/main.pdf` tab in Cursor, or
2. Use the PDF that `make watch` opens in **Preview** (macOS), which reloads automatically, or
3. Run `make` manually after edits, then reopen the PDF tab.

If `make watch` itself seems stuck, stop it (`Ctrl+C`) and restart it.

## Structure

```
resume/main.tex                         Resume
cover-letters/coverletter.tex           Cover letter (Morgan Stanley)
cover-letters/coverletter-bloomberg.tex Cover letter (Bloomberg)
applications/salford/                 MSc Artificial Intelligence
applications/coventry/                MSc Advanced Software Engineering
applications/portsmouth/              MSc Computer Science (Portsmouth)
applications/greenwich/               MSc Computer Science (Greenwich)
applications/chester/                 MSc Advanced Computer Science
applications/east-london/             MSc Software Engineering
applications/middlesex/               MSc Computer Science (Middlesex)
applications/template.tex             Blank personal statement
cls/resume.cls                          Shared document class
Makefile                                Build commands
```
