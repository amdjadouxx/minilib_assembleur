#à faire
ASM_FLAG 		= 			-f elf64

SRC 			= 			hw_write.asm

OBJ 			= 			$(SRC:.asm=.o)

NAME 			=			 libasm.so

MAIN_TEST_FILE	= 			main.c

NAME_TEST_BINARY =			main

all: $(NAME)

$(NAME): $(OBJ)
		ld -o $(NAME) -shared $(OBJ)

clean:
	rm -rf $(OBJ)

ld_path_thing:
	echo export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH

fclean: clean
	rm -rf $(NAME)

re: 	fclean all

%.o : %.asm
	nasm $(ASM_FLAG) -o $@ $<

test_binary: all
	gcc -o main main.c -L. -lasm

test_binary_clean:
	rm $(NAME_TEST_BINARY)
