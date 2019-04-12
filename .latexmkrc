#!/bin/perl
# $latex         = 'platex %O %S';
# $bibtex        = 'pbibtex %O %B';
# $dvipdf        = 'dvipdfmx %O %S';
# $pdf_mode      = 3; # use dvipdf
# $pdf_previewer = "start evince";
# $pdf_update_method = 0;

# $latex = $latex='platex %O "kanji=utf8 -guess-input-enc -synctex=1 -interaction=nonstopmode %S';
# $biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
# $bibtex = 'jbibtex %O %B';
# $dvipdf = $dvipdf='dvipdfmx -f ptex-ipaex.map %S';
# $dvipdf = "dvipdfmx %O -o %D %S";
# $dvips = 'pdvips';
# $pdf_mode = 3;

$latex            = 'platex -synctex=1 -halt-on-error';
$latex_silent     = 'platex -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex           = 'pbibtex %O %S';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode	  = 3; # generates pdf via dvipdfmx

if ($^O eq 'darwin') {
	$pdf_previewer = 'open -a Skim';
} elsif ($^O eq 'linux') {
	$pdf_previewer = 'evince';
	$dvi_previewer = 'start xdvi';
}
