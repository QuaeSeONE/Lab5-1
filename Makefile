./bin/main: ./obj/main.o ./obj/sqr.o
	gcc -o ./bin/main ./obj/main.o ./obj/sqr.o -lm

testto:
	./bin/test

./bin/test: ./obj/main_test.o ./obj/sqr.o ./obj/test.o
	gcc -o ./bin/test ./obj/main_test.o ./obj/sqr.o ./obj/test.o -lm

./obj/main.o: ./src/main.c
	gcc -c ./src/main.c -o ./obj/main.o

./obj/sqr.o: ./src/sqr.c
	gcc -c ./src/sqr.c -o ./obj/sqr.o

./obj/main_test.o: ./test/main.c
	gcc -c ./test/main.c -o ./obj/main_test.o -I thirdparty/

./obj/test.o: ./test/test.c
	gcc -c ./test/test.c -o ./obj/test.o -I thirdparty/ -I src/

.PHONY: clean
clean:
	rm -f ./obj/* ./bin/*
