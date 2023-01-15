PROG=cubic-zirconia
TIC=/Applications/tic80.app/Contents/MacOS/tic80
TICOPTS=--skip
PAK=pakettic
ALG=dlas
LEVEL=3
TARGET=256
PAKOPTS=-z$(LEVEL) -a$(ALG) -p -ccode --target-size=$(TARGET)

dist: $(PROG).tic

run:
	$(TIC) $(TICOPTS) $(PROG).lua

run-dist:
	$(TIC) $(TICOPTS) $(PROG).tic

$(PROG).tic: $(PROG).lua
	$(PAK) $(PAKOPTS) $< -o $@

clean:
	$(RM) $(PROG).tic

.PHONY: run dist run-dist clean
