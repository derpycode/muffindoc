# LaTeX Makefile v0.33 -- LaTeX only
# need to install inotify-tools, zsh and rubber
# make watch: document will automatically recompiled any time it is saved  
PAPER=muffin.tex  # set the path to your TeX file here
SHELL=/bin/zsh   # for the while loop below

all:  ## Compile paper
	rubber --pdf $(PAPER)

clean:  ## Clean output files
	rubber --clean $(PAPER)

watch:  ## Recompile on updates to the source file
	@while [ 1 ]; do; inotifywait $(PAPER); sleep 0.01; make all; done
    # for Bash users, replace the while loop with the following
    # @while true; do; inotifywait $(PAPER); sleep 0.01; make all; done
