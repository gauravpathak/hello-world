TARGET=hello

all: run

${TARGET}: ${TARGET}.o
	${CC} ${TARGET}.o -o ${TARGET}

${TARGET}.o: ${TARGET}.c
	${CC} -c ${TARGET}.c

clean:
	rm -f *.o ${TARGET}
run: clean ${TARGET}
	./${TARGET}
