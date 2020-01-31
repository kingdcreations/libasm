NAME		=	libasm.a

SRCS		= srcs/ft_strlen.s \
					srcs/ft_strcpy.s \
					srcs/ft_strcmp.s \
					srcs/ft_write.s \
					srcs/ft_read.s \
					srcs/ft_strdup.s \

SRCS2		= $(SRCS) \
					srcs/ft_list_push_front.s \
					srcs/ft_list_size.s \
					srcs/ft_list_sort.s \

OBJS		=	$(SRCS:.s=.o)

OBJS2		=	$(SRCS2:.s=.o)

CC			=	~/.brew/bin/nasm

INFO		=	\033[0;90m
DONE		=	\033[0;32m
HEAD		=	\033[0;36m
NC			=	\033[0m

CFLAGS	=	-f macho64

CLEAN		=	clean

all			: $(NAME)

$(NAME)	: $(OBJS)
					@echo "\n$(HEAD)██╗     ██╗██████╗  █████╗ ███████╗███╗   ███╗$(NC)"
					@echo   "$(HEAD)██║     ██║██╔══██╗██╔══██╗██╔════╝████╗ ████║$(NC)"
					@echo   "$(HEAD)██║     ██║██████╔╝███████║███████╗██╔████╔██║$(NC)"
					@echo   "$(HEAD)██║     ██║██╔══██╗██╔══██║╚════██║██║╚██╔╝██║$(NC)"
					@echo   "$(HEAD)███████╗██║██████╔╝██║  ██║███████║██║ ╚═╝ ██║$(NC)"
					@echo   "$(HEAD)╚══════╝╚═╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝$(NC)"

					@echo "$(DONE)              Creating $(NAME)\n$(NC)"
					@ar rcs $(NAME) $(OBJS)


bonus		: $(OBJS2)
					@echo "\n$(HEAD)██╗     ██╗██████╗  █████╗ ███████╗███╗   ███╗$(NC)"
					@echo   "$(HEAD)██║     ██║██╔══██╗██╔══██╗██╔════╝████╗ ████║$(NC)"
					@echo   "$(HEAD)██║     ██║██████╔╝███████║███████╗██╔████╔██║$(NC)"
					@echo   "$(HEAD)██║     ██║██╔══██╗██╔══██║╚════██║██║╚██╔╝██║$(NC)"
					@echo   "$(HEAD)███████╗██║██████╔╝██║  ██║███████║██║ ╚═╝ ██║$(NC)"
					@echo   "$(HEAD)╚══════╝╚═╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝$(NC)"

					@echo "$(DONE)        Creating $(NAME) with bonuses\n$(NC)"
					@ar rcs $(NAME) $(OBJS2)

%.o: %.s	includes/libasm.h
					@$(CC) $(CFLAGS) $<

clean		:
					@echo "\n$(INFO)              Removing .o files$(NC)"
					@rm -f $(OBJS2)

fclean	:	clean
					@echo "$(INFO)              Removing $(NAME)\n$(NC)"
					@rm -f $(NAME)

test		: all
					gcc -Wall -Werror -Wextra tests/main.c libasm.a -Iincludes && ./a.out

testb		: bonus
					gcc -Wall -Werror -Wextra tests/main_bonus.c libasm.a -Iincludes && ./a.out

re			:	fclean all

.PHONY	:	all clean fclean re bonus test
