CLANG =	clang

FLAGS =	-Wall -Wextra -Werror

SRCS = Colleen.c						\
	   Grace.c							\
	   Sully.c

.PHONY: all clean fclean re Colleen Grace Sully

all: Colleen Grace Sully

Colleen:
	@$(CLANG) $(FLAGS) Colleen.c -o Colleen

Grace:	
	@$(CLANG) $(FLAGS) Grace.c -o Grace

Sully:
	@$(CLANG) $(FLAGS) Sully.c -o Sully
clean:

fclean:		clean
		@rm -rf Colleen Grace Sully Sully_* output Grace_kid.c

re:	fclean all