#à faire
ASM_FLAG 		= 			-f elf64

SRC 			= 			strlen.asm\
							strcmp.asm\
							strncmp.asm

OBJ 			= 			$(SRC:.asm=.o)

NAME 			=			 libasm.so

MAIN_TEST_FILE	= 			main.c

NAME_TEST_BINARY =			main

all: $(NAME) test_binary

$(NAME): $(OBJ)
		ld -o $(NAME) -shared $(OBJ)

clean:
	rm -rf $(OBJ)

ld_path_thing:
#DONT COPY THE DISPLAY COMMAND!!
#THIS ONE IS WITHOUT DISPLAY THINGS: export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH
	echo export LD_LIBRARY_PATH=.:$$LD_LIBRARY_PATH

fclean: clean test_binary_clean
	rm -rf $(NAME)

re: 	fclean all

%.o : %.asm
	nasm $(ASM_FLAG) -o $@ $<

test_binary:
	gcc -o main main.c -L. -lasm -W -Wextra -Werror

test_binary_clean:
	rm $(NAME_TEST_BINARY)
