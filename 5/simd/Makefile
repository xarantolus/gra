CFLAGS+=-g -Og -std=c17 -Wall -Wextra
LDFLAGS=-lm

all: add_one

add_one: main.c add_one.S
	gcc $^ $(CFLAGS) -lm -o $@


.PHONY: clean
clean:
	rm -f add_one
