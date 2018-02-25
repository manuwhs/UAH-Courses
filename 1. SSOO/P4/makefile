all:  prac4_fifo.o prac4_mmu.o  prac4_fifo  prac4_fifo2op.o prac4_fifo2op prac4_lru

prac4_fifo.o: prac4_fifo.c 
	gcc -g -Wall -c prac4_fifo.c -o prac4_fifo.o

prac4_lru.o: prac4_lru.c 
	gcc -g -Wall -c prac4_lru.c -o prac4_lru.o

prac4_fifo2op.o: prac4_fifo2op.c 
	gcc -g -Wall -c prac4_fifo2op.c -o prac4_fifo2op.o

prac4_mmu.o: prac4_mmu.c
	gcc -g -Wall -c prac4_mmu.c -o prac4_mmu.o

prac4_fifo: prac4_fifo.o prac4_mmu.o prac4_main.o libprac4.a
	gcc -g -Wall -o prac4_fifo prac4_mmu.o prac4_fifo.o prac4_main.o -L. -lprac4 

prac4_fifo2op: prac4_fifo2op.o prac4_mmu.o prac4_main.o libprac4.a
	gcc -g -Wall -o prac4_fifo2op prac4_mmu.o prac4_fifo2op.o prac4_main.o -L. -lprac4 

prac4_lru: prac4_lru.o prac4_mmu.o prac4_main.o libprac4.a
	gcc -g -Wall -o prac4_lru prac4_mmu.o prac4_lru.o prac4_main.o -L. -lprac4 
