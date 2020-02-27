# ==== RULES FOR AUTOMATIC DOCUMENTATION =====

LATEX=latex
DVIPS=dvips
PS2PDF=ps2pdf

PS2PDF_ARGS=-dMaxSubsetPct=100 -dCompatibilityLevel=1.2 \
            -dSubsetFonts=true -dEmbedAllFonts=true \
            -dAutoFilterColorImages=false \
            -dAutoFilterGrayImages=false \
            -dColorImageFilter=/FlateEncode \
            -dGrayImageFilter=/FlateEncode \
            -dModoImageFilter=/FlateEncode -sPAPERSIZE=a4

CHECK_FOR_LATEX= @ $(SHELL) -ec 'which $(LATEX) > /dev/null'
CHECK_FOR_DVIPS= @ $(SHELL) -ec 'which $(DVIPS) > /dev/null'
CHECK_FOR_PS2PDF= @ $(SHELL) -ec 'which $(PS2PDF) > /dev/null'
CHECK_FOR_PERL= @ $(SHELL) -ec 'which $(PERL) > /dev/null'

USER_MANUAL=muffin

manual:
	$(CHECK_FOR_LATEX)
	$(CHECK_FOR_DVIPS)
	$(CHECK_FOR_PS2PDF)
	$(LATEX) $(USER_MANUAL).tex
	$(DVIPS) -o $(USER_MANUAL).ps $(USER_MANUAL).dvi
	$(PS2PDF) $(PS2PDF_ARGS) $(USER_MANUAL).ps $(USER_MANUAL).pdf

clean:
	\rm -rf html latex
	\rm -f $(USER_MANUAL).dvi $(USER_MANUAL).ps $(USER_MANUAL).pdf
	\rm -f $(USER_MANUAL).log $(USER_MANUAL).aux $(USER_MANUAL).toc $(USER_MANUAL).outsvn revert

cleanmuffin:
	\rm -f muffin-*.dvi muffin-*.ps muffin-*.pdf
	\rm -f muffin-*.log muffin-*.aux muffin-*.toc muffin-*.out

