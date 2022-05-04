ASFLAGS+=--64
all: 1.o env

1.o: 1.S
	as $(ASFLAGS) $^ -o $@

env: env.o
	gcc -nostdlib $^ -o $@

env.o: env.S
	as $(ASFLAGS) $^ -o $@

.PHONY:
clean:
	rm -f *.o env
