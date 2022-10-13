.SUFFIXES: .c .o

CC = gcc
CFLAGS = -c -g
LDFLAGS = 
TARGET = program

SRCS = $(OBJS: .o=.c)
OBJS = main.o \
	   hello.o

run: $(TARGET)
	./$(TARGET)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

#.c.o:
#	$(CC) -o $@ $< $(CFLAGS) 

clean:
	rm -f *.o $(TARGET)