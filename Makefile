.PHONY: all clean fclean re

SRCS = ft_printf.c \
	   options_1.c \
	   options_2.c \
	   utils.c \

OBJS = ${SRCS:.c=.o}
NAME = libftprintf.a
CC = clang
CFLAGS = -Wall -Wextra -Werror -c
RM = rm -f

all: ${NAME}

${NAME}: ${OBJS}
	ar rcs ${NAME} ${OBJS}

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all
