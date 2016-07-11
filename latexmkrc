# Be quiet
$silent = 1;

# Produce only pdf
$pdf_mode = 1;
$dvi_mode = 0;
$postscript_mode = 0;

# Use pdflatex with text syncronization and script execution
$pdflatex = 'pdflatex --synctex=-1 --shell-escape %O %S';

# Custom dependency and function for nomencl package 
add_cus_dep( 'nlo', 'nls', 0, 'makenlo2nls' );
sub makenlo2nls {
	system( "makeindex -s nomencl.ist -o \"$_[0].nls\" \"$_[0].nlo\"" );
}

# Main file to compile
@default_files = ( 'finexrel.tex' );
