CFLAGS = -I ./include
##LIB    = ./lib/fmod/libfmodex64.so
LFLAGS = -lrt -lX11 -lGLU -lGL -lm #-lXrandr

all: minions 

minions: minions.cpp log.cpp
	g++ $(CFLAGS) minions.cpp log.cpp libggfonts.a -Wall -Wextra $(LFLAGS) -o minions 

clean:
	rm -f minions 
	rm -f *.o

