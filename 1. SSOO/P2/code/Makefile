all: datos practica2_std practica2_malloc practica2_mmap

clean:
	rm -f datos.bin
	rm -f *.o
	rm -f practica2_malloc
	rm -f practica2_mmap
	rm -f practica2_std
	rm -f ./ensamblar/*.s
	rm -f ./depuracion/*.txt
datos:
	tar xvfz datos.tgz

practica2.o: practica2.c
	gcc -c practica2.c -Wall

revisanotas_std.o: revisanotas_std.c
	gcc -c revisanotas_std.c -Wall
revisanotas_malloc.o: revisanotas_malloc.c
	gcc -c revisanotas_malloc.c -Wall
revisanotas_mmap.o: revisanotas_mmap.c
	gcc -c revisanotas_mmap.c -Wall


practica2_std: practica2.o revisanotas_std.o
	gcc -o practica2_std practica2.o revisanotas_std.o -Wall
practica2_malloc: practica2.o revisanotas_malloc.o
	gcc -o practica2_malloc practica2.o revisanotas_malloc.o -Wall
practica2_mmap: practica2.o revisanotas_mmap.o
	gcc -o practica2_mmap practica2.o revisanotas_mmap.o -Wall

ensamblar: practica2_std
	gcc -S revisanotas_std.c
	gcc -S revisanotas_malloc.c
	gcc -S revisanotas_mmap.c
	mv *.s ensamblar	

depuracion: practica2_std
	make datos
	ltrace -c -o std_ltrace.txt ./practica2_std
	make datos
	ltrace -c -o malloc_ltrace.txt ./practica2_malloc
	make datos	
	ltrace -c -o mmap_ltrace.txt ./practica2_mmap
	make datos
	strace -c -o std_strace.txt ./practica2_std
	make datos
	strace -c -o malloc_strace.txt ./practica2_malloc
	make datos
	strace -c -o mmap_strace.txt ./practica2_mmap
	make datos
	mv *.txt depuracion
