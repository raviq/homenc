# Makefile 

CC = g++
GMP=-lgmp
NTL=-lntl
CFLAGS = -g -O2 -std=c++11 -pthread -DFHE_THREADS -DFHE_BOOT_THREADS -fmax-errors=2
#CFLAGS = -g -O2 -std=c++11 -Wfatal-errors -Wshadow -Wall -I/usr/local/include 

LDLIBS = -L/usr/local/lib $(NTL) $(GMP) -lm
BIN = bin
INC = inc
SRC = src

all:
	@echo "Usage:"
	@echo "\t if prog.cpp is the main source file,"
	@echo "\t run 'make prog_x'"
	
./%_x: $(SRC)/%.cpp
	$(CC) $(CFLAGS) -o $(BIN)/$@ $< lib/fhe.a $(LDLIBS) -I$(INC)

clean:
	rm -f *.o $(BIN)/*_x
	rm -rf $(BIN)/*.dSYM

#