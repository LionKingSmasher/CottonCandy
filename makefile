SOURCE := source/cottoncandy.f90
OBJS := source/cottoncandy.o

LIB_NAME := libcottoncandy.a

F_COMPILER := flang

source/%.o : source/%.f90
	@echo "Source compiled..."
	@$(F_COMPILER) -c -o $@ $^
	@echo "done!"

$(LIB_NAME) : $(OBJS)
	@echo "Library out...."
	@ar rc $@ $^
	@rm -rf *.o source/*.o
	@echo "done!!"

clear:
	@echo "Remove file"
	@rm -rf *.o *.a source/*.o *.mod