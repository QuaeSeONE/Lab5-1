./bin/main: ./obj/main.o ./obj/sqr.o
	gcc -o ./bin/main ./obj/main.o ./obj/sqr.o -lm

./obj/main.o: ./src/main.c
	gcc -c ./src/main.c -o ./obj/main.o

./obj/sqr.o: ./src/sqr.c
	gcc -c ./src/sqr.c -o ./obj/sqr.o

.PHONY: clean
clean:
	rm -f ./obj/*.o ./bin/main
