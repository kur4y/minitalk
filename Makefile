# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tanota <tanota@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/21 13:15:31 by tanota            #+#    #+#              #
#    Updated: 2023/06/21 17:50:03 by tanota           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME_CLIENT				=			client

NAME_CLIENT_BONUS		=			client_bonus

NAME_SERVER				=			server

NAME_SERVER_BONUS		=			server_bonus

CC						=			cc

CFLAGS					=			-Wall -Wextra -Werror

all						:			$(NAME_CLIENT) $(NAME_SERVER)

$(NAME_CLIENT)			:
									make -C libft/ && mv libft/libft.a .
									$(CC) -o $(NAME_CLIENT) client.c libft.a

$(NAME_SERVER)			:
									$(CC) -o $(NAME_SERVER) server.c libft.a
								
$(NAME_CLIENT_BONUS) 	:
									make -C libft/ && mv libft/libft.a .
									$(CC) -o $(NAME_CLIENT_BONUS) client_bonus.c libft.a

$(NAME_SERVER_BONUS)	:
									$(CC) -o $(NAME_SERVER_BONUS) server_bonus.c libft.a
		
clean					:
									make clean -C libft/

fclean					: 			clean
									rm -rf $(NAME_CLIENT) $(NAME_SERVER) $(NAME_CLIENT_BONUS) $(NAME_SERVER_BONUS) libft.a
									
re						:			fclean all

bonus					:			$(NAME_CLIENT_BONUS) $(NAME_SERVER_BONUS)

.PHONY					:			all clean fclean re bonus
