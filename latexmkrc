# Set the root LaTeX file
$root_file = 'root.tex';

# Set the build directory
$out_dir = './build';

# Create the build directory if it doesn't exist
system("mkdir -p $out_dir") unless -d $out_dir;

# Additional latexmk options
$pdf_mode = 1;  # Generate PDF output
$pdflatex = 'pdflatex -interaction=nonstopmode -output-directory=' . $out_dir;  # Set pdflatex command with output directory