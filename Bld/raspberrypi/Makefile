# source files.
SRC =  	$(shell find ../../Src -iname "*.c")

OBJ = $(patsubst ../../Src/%.c,%.o,$(SRC))

OUT = ../../Lib/libglutes.a

# include directories
INCLUDES = -I. -I../include/ -I/usr/include

# C++ compiler flags (-g -O2 -Wall)
CCFLAGS = -march=armv6j -mtune=arm1176jzf-s -mfpu=vfp -mfloat-abi=softfp -finline-functions -funroll-all-loops  -O3 -funsafe-math-optimizations -ftree-vectorize 

# compiler
CCC = gcc

# library paths
LIBS = 

# compile flags
LDFLAGS = -g 

.SUFFIXES: .cpp

default: $(OUT)

%.o: 	../../Src/%.c
	$(CCC) $(INCLUDES) $(CCFLAGS) -c $< -o $@

$(OUT): $(OBJ)
	echo $(SRC)
	ar rcs $(OUT) $(OBJ)

depend: dep

dep:
	makedepend -- $(CFLAGS) -- $(INCLUDES) $(SRC)

clean:
	rm -f $(OBJ) $(OUT) Makefile.bak 

