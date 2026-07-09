$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 -file-line-error %O %S';

# Open PDF in the system viewer after each build.
# Cursor's built-in PDF preview does not auto-reload when the file changes on disk.
$pdf_previewer = 'open -g %O %S';

# Poll every 2s for source changes (fallback if OS file watching misses a save).
$pvc_timeout = 2;
