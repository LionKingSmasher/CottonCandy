SOURCE := source/cottoncandy.f90
OBJS := source/cottoncandy.o

LIB_NAME := libcottoncandy.a

source/%.o : source/%.f90
	@echo "Source compiled..."
	gfortran -c -o $@ $^
	@echo "done!"

$(LIB_NAME) : $(OBJS)
	@echo "Library out...."
	ar rc $@ $^
	rm -rf *.o source/*.o
	@echo "done!!"

clear:
	rm -rf *.o *.a source/*.o