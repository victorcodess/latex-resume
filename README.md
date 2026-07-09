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

Output is written to `main.pdf`.

### PDF not updating in Cursor?

`make watch` **is** rebuilding the file — check the terminal for `Output written on main.pdf`.

Cursor's built-in PDF preview does **not** auto-reload when the file changes on disk. To see updates:

1. **Close and reopen** the `main.pdf` tab in Cursor, or
2. Use the PDF that `make watch` opens in **Preview** (macOS), which reloads automatically, or
3. Run `make` manually after edits, then reopen the PDF tab.

If `make watch` itself seems stuck, stop it (`Ctrl+C`) and restart it.

## Structure

```
main.tex      Resume content
resume.cls    Document class (name, address, rSection)
Makefile      Build commands
```
