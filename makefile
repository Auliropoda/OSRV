CC=cc 
GCC=gcc 
CXX=g++ 
CLANG=clang
 # FLAGS: 
CFLAGS=-o 
CXXFLAGS=- 
LIBFLAGS=-pthread 
GDBFLAG=-g
 #SRC + OBJ + TAG: 
SRC = main.cpp 
OBJ = - 
TAG = otp
 
.PHONY: all clean install uninstall
 
all: ${TAG}
 
${TAG}: ${SRC} 
	${CXX} $^ ${GDBFLAG} ${LIBFLAGS} ${CFLAGS} $@
 
clean: ${TAG} 
	rm $^
# 
