all: fortran c c2 c3

fortran:
	ifort -O2 -xHost nbody.f90
	bash -c "time ./a.out 50000000"

c:
	gcc -pipe -Wall -Ofast -march=native nbody.c -lm
	bash -c "time ./a.out 50000000"

c2:
	gcc -pipe -Wall -Ofast -march=native nbody2.c -lm
	bash -c "time ./a.out 50000000"

c3:
	gcc -pipe -Wall -Ofast -march=native nbody3.c -lm
	bash -c "time ./a.out 50000000"
