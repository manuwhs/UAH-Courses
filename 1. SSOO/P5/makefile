all:  prac5_fifo.o prac5_mmu.o  prac5_fifo  prac5_fifo2op.o prac5_fifo2op
prac5_fifo.o: prac5_fifo.c 
	gcc -g -Wall -c prac5_fifo.c -o prac5_fifo.o

prac5_mmu.o: prac5_mmu.c
	gcc -m32 -g -Wall -c prac5_mmu.c -o prac5_mmu.o

prac5_fifo: prac5_fifo.o prac5_mmu.o prac5_main.o libprac5.a
	gcc -g -Wall -o prac5_fifo prac5_mmu.o prac5_fifo.o prac5_main.o -L. -lprac5 

prac5_fifo2op.o: prac5_fifo2op.c 
	gcc -g -Wall -c prac5_fifo2op.c -o prac5_fifo2op.o

prac5_fifo2op: prac5_fifo2op.o prac5_mmu.o prac5_main.o libprac5.a
	gcc -g -Wall -o prac5_fifo2op prac5_mmu.o prac5_fifo2op.o prac5_main.o -L. -lprac5 
