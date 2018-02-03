#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssarkisi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/08 17:12:23 by ssarkisi          #+#    #+#              #
#    Updated: 2017/11/08 17:12:25 by ssarkisi         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

OBJC = ft_atoi.c\
		ft_atoin.c\
		ft_bzero.c\
		ft_isalnum.c\
		ft_isalpha.c\
		ft_isascii.c\
		ft_isdigit.c\
		ft_isprint.c\
		ft_itoa.c\
		ft_itoa_base.c\
		ft_lstadd.c\
		ft_lstdel.c\
		ft_lstdelone.c\
		ft_lstiter.c\
		ft_lstmap.c\
		ft_lstnew.c\
		ft_memalloc.c\
		ft_memccpy.c\
		ft_memchr.c\
		ft_memcmp.c\
		ft_memcpy.c\
		ft_memdel.c\
		ft_memmove.c\
		ft_memset.c\
		ft_putchar.c\
		ft_putchar_fd.c\
		ft_putendl.c\
		ft_putendl_fd.c\
		ft_putnstr.c\
		ft_putstr.c\
		ft_putstr_fd.c\
		ft_putstr_in_upper.c\
		ft_putnbr.c\
		ft_putnbr_fd.c\
		ft_strcat.c\
		ft_strchr.c\
		ft_strclr.c\
		ft_strcmp.c\
		ft_strcpy.c\
		ft_strdel.c\
		ft_strdup.c\
		ft_strequ.c\
		ft_striter.c\
		ft_striteri.c\
		ft_strlcat.c\
		ft_strlen.c\
		ft_strmap.c\
		ft_strmapi.c\
		ft_strncat.c\
		ft_strncmp.c\
		ft_strncpy.c\
		ft_strnequ.c\
		ft_strnew.c\
		ft_strnstr.c\
		ft_strrchr.c\
		ft_strsplit.c\
		ft_strstr.c\
		ft_strsub.c\
		ft_strtrim.c\
		ft_tolower.c\
		ft_toupper.c\
		ft_strjoin.c\
		ft_numbercount.c\
		ft_notnumbercount.c\
		ft_onlytext.c\
		ft_onlynumber.c\
		ft_arrsize.c\
		ft_unicode.c\
		ft_sizeof_unicode.c\
		ft_counter.c\
		pf_find_flags.c\
		pf_find_width.c\
		pf_find_precision.c\
		pf_find_length.c\
		pf_find_type.c\
		pf_is_type.c\
		pf_to_struct.c\
		pf_add_0x.c\
		pf_add_to_start.c\
		pf_add_to_end_char.c\
		pf_add_to_end.c\
		pf_set_wight.c\
		pf_set_precision_num.c\
		pf_set_precision_str.c\
		pf_read_s.c\
		pf_read_p.c\
		pf_read_c.c\
		pf_read_di.c\
		pf_read_uox.c\
		pf_read_percent.c\
		pf_next_type.c\
		pf_del_struct.c\
		pf_next_type_pos.c\
		ft_printf.c
OBJO = $(OBJC:.c=.o)
NAME = libftprintf.a
CFLAGS = -Wall -Werror -Wextra

$(NAME):
	@gcc $(CFLAGS) -c $(OBJC)
	@ar rc $(NAME) $(OBJO)
	@ranlib $(NAME)

all: $(NAME)

clean:
	@rm -f $(OBJO)

fclean: clean
	@rm -f $(NAME)

re: fclean all
