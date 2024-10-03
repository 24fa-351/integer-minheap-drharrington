CC = gcc
TARGET = asst6

all: $(TARGET)

$(TARGET): asst6.o heap.o
	$(CC) -o $(TARGET) asst6.o heap.o

asst6.o: asst6.c heap.h
	$(CC) -c asst6.c

heap.o: heap.c heap.h
	$(CC) -c heap.c

clean:
	rm -f *.o $(TARGET)