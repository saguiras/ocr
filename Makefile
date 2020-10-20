CC=gcc -rdynamic

CPPFLAGS =  `pkg-config --cflags sdl` -MMD
CFLAGS = -Wall -Wextra -std=c99 -g
LDFLAGS =
LDLIBS= `pkg-config --libs sdl` -lSDL_image 

SRC = main.c treatment/treatment.c tools/tools.c 
OBJ= $(SRC:.c=.o)
DEP= $(SRC:.c=.d)

all: main

main: $(OBJ)

run: all
	./main

clean:
	${RM} *.o
	${RM} *.d
	${RM} display
	${RM} grayscale

# END           
