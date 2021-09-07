CLANG =	clang

FLAGS =	-Wall -Wextra -Werror

SRCS = Colleen.c						\
	   Grace.c							\
	   Sully.c

.PHONY: all clean fclean re Colleen Grace Sully

all: Colleen Grace Sully

Colleen:	Makefile $(OBJ)
	@$(CLANG) $(CFLAG) Colleen.c -o Colleen

Grace:	
	@$(CLANG) $(CFLAG) Grace.c -o Grace

Sully:
	@$(CLANG) $(CFLAG) Sully.c -o Sully
clean:

fclean:		clean
		@rm -rf Colleen Grace Sully Sully_* output Grace_kid.c

re:	fclean all