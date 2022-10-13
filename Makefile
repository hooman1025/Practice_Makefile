#Makefile 예시
#확장자 치환 매크로
.SUFFIXES: .c .o

CC = gcc
CFLAGS = -c -g
LDFLAGS = 
TARGET = program

SRCS = $(OBJS: .o=.c)
OBJS = main.o \
	   hello.o

#자동 실행 매크로
run: $(TARGET)
	./$(TARGET)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

#.c.o:
#	$(CC) -o $@ $< $(CFLAGS) 

#main.o : main.c
#	$(CC) $(CFLAGS) $^
#hello.o : hello.c
#	$(CC) $(CFLAGS) $^

clean:
	rm -f *.o $(TARGET)