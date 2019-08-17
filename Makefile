DFLAGS=-DCOMPILE_TESTS
INCLUDE=.
LIBS=
CC=gcc
OFLAGS=-c
CFLAGS=-g3 -Wall -Wextra -std=c99 -pedantic -I$(INCLUDE) $(DFLAGS)
MAKE=make

TARGET=main
OBJECTS=main.o

all: $(TARGET)

$(TARGET): $(OBJECTS) Makefile
	$(CC) $(CFLAGS) $(DFLAGS) -o $(TARGET) $(OBJECTS) $(LIBS)

%o: %.c Makefile
	$(CC) $(CFLAGS) $(OFLAGS) -o $@ $<

run: $(TARGET) *.o *.c *.h
	./$(TARGET)

clean:
	rm -f $(OBJECTS) $(TARGET)

