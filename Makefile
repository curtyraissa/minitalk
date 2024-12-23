# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rcurty-g <rcurty-g@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/18 14:18:50 by rcurty-g          #+#    #+#              #
#    Updated: 2024/12/18 14:18:53 by rcurty-g         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# -L<dir>: Specifies the directory to search for libraries (-Llibft).
# -l<name>: Links a specific library (-lft for libft.a).
# -C: Runs make in a different directory (make -C libft).

NAME_SERVER = server
NAME_CLIENT = client

CC = cc
CFLAGS = -Wall -Wextra -Werror

LIBFT_DIR = libft
LIBFT = $(LIBFT_DIR)/libft.a

all: $(LIBFT) $(NAME_SERVER) $(NAME_CLIENT)

$(LIBFT):
	@make -C $(LIBFT_DIR)

$(NAME_SERVER): server.c $(LIBFT)
	@$(CC) $(CFLAGS) server.c -o $(NAME_SERVER) -L$(LIBFT_DIR) -lft

$(NAME_CLIENT): client.c $(LIBFT)
	@$(CC) $(CFLAGS) client.c -o $(NAME_CLIENT) -L$(LIBFT_DIR) -lft

clean:
	@rm -f $(NAME_SERVER) $(NAME_CLIENT)
	@make clean -C $(LIBFT_DIR)

fclean: clean
	@rm -f $(LIBFT)
	@make fclean -C $(LIBFT_DIR)

re: fclean all