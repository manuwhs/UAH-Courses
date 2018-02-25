all: practica3_1 practica3_2 

clean:
	rm -f datos.bin
	rm -f *.o
	rm -f practica3_1
	rm -f practica3_2

practica3.o: practica3.c
	gcc -c practica3.c -Wall

f1.o: f1.c
	gcc -c f1.c -Wall

f2.o: f2.c
	gcc -c f2.c -Wall 

practica3_1: practica3.o f1.o
	gcc -o practica3_1 practica3.o f1.o -lpthread -Wall

practica3_2: practica3.o f2.o
	gcc -o practica3_2 practica3.o f2.o -lpthread -lm -Wall

