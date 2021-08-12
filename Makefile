NAME=Tetris
OBJECTS=main.o tetris.o
CC=gcc
FLAGS=-I./ -O3 -lrt 

$(NAME): $(OBJECTS)
	$(CC) $(FLAGS) $(OBJECTS) -o $(NAME)

%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

RM		= rm -f

clean:
		${RM} ${OBJECTS}

fclean:	clean
		${RM} ${NAME}

re:		fclean all
