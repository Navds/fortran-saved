# Makefile for current directory

LD = gfortran
FORT = gfortran
FORTFLAGS = -g -c
LDFLAGS = -g -o
OBJECTS = $(patsubst %.f90, %.o, $(wildcard *.f90))
EXENAME = savedpbm

all: EXE

EXE: $(OBJECTS)
	$(LD) $(LDFLAGS) $(EXENAME) $^

%.o: %.f90
	$(FORT) $(FORTFLAGS) $^

.PHONY:clean
clean:
	@rm -f *.o savedpbm *.mod
