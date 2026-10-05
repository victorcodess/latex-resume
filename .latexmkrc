use Cwd 'abs_path';

$pdf_mode = 1;
$do_cd = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 -file-line-error %O %S';

# Shared class is in cls/. Walk up from the current directory to the repo root.
my $root = abs_path('.');
while (!-f "$root/cls/resume.cls") {
  my $parent = abs_path("$root/..");
  last if $parent eq $root;
  $root = $parent;
}
ensure_path('TEXINPUTS', "$root/cls");

# Open PDF in the system viewer after each build.
# Cursor's built-in PDF preview does not auto-reload when the file changes on disk.
$pdf_previewer = 'open -g %O %S';

# Poll every 2s for source changes (fallback if OS file watching misses a save).
$pvc_timeout = 2;
