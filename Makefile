# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: user42 <user42@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/13 19:53:29 by clkuznie          #+#    #+#              #
#    Updated: 2020/11/27 17:30:12 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			= libasm.a

SRCS_FT			:= \
ft_strcmp\
ft_strlen\
# ft_read\
ft_strdup\
ft_strcpy\
ft_write

BONUS_FT		:= \
# ft_atoi_base\
ft_list_push_front\
ft_list_size\
ft_list_sort\
ft_list_remove_if

S_FILES		:= \
$(addprefix srcs/, $(addsuffix .s, $(SRCS_FT)))

S_OBJS		= \
$(addprefix objs/, $(addsuffix .o, $(SRCS_FT)))

B_FILES		:= \
$(addprefix srcs/, $(addsuffix _bonus.s, $(BONUS_FT)))

B_OBJS		:= \
$(addprefix objs/, $(addsuffix _bonus.o, $(BONUS_FT)))

CC				= nasm
CFLAGS			= -f elf64

RM				= rm -f

all:			$(NAME)

$(NAME):		$(S_OBJS)
	ar rs $(NAME) $(S_OBJS)

bonus:			$(S_OBJS) $(B_OBJS)
	ar rs $(NAME) $(S_OBJS) $(B_OBJS)

objs/%.o:		srcs/%.s
	$(CC) $< $(CFLAGS) -o $@

clean:
	$(RM) $(S_OBJS) $(B_OBJS)

fclean:			clean
	$(RM) $(NAME)

re:				fclean all
