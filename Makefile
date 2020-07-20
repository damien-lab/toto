##
## EPITECH PROJECT, 2020
## Makefiel
## File description:
## Syn_makefile
##


NAME	=	autoCompletion

SRC	=	./src/main.cpp	\

CPPFLAGS	=	-I./include -Wall -Wextra

OBJ		=	$(SRC:.cpp=.o)

CC	=	g++

all:		$(NAME)

$(NAME):	$(OBJ)
		$(CC) -o $(NAME) $(SRC) $(CPPFLAGS)

clean:
		rm -f $(OBJ)

fclean:	clean
		rm -f $(NAME)

re:		clean all

.PHONY:	all clean re
