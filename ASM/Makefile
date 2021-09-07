NASM = nasm

NASM_FLAGS = -f elf64

CLANG =	clang

FLAGS =	-Wall -Wextra -Werror

SRCS = Colleen.s						\
	   Grace.s							\
	   Sully.s

.PHONY: all clean fclean re Colleen Grace Sully

all: Colleen Grace Sully

Colleen:
	@$(NASM) $(NASM_FLAGS) Colleen.s
	@$(CLANG) $(FLAG) Colleen.o -o Colleen

Grace:	
	@$(NASM) $(NASM_FLAGS) Grace.s
	@$(CLANG) $(FLAG) Grace.o -o Grace

Sully:
	@$(NASM) $(NASM_FLAGS) Sully.s
	@$(CLANG) $(FLAG) Sully.o -o Sully
clean:
	@rm -rf Colleen.o Grace.o Sully.o	

fclean:		clean
		@rm -rf Colleen Grace Sully Sully_* output Grace_kid.s

re:	fclean all