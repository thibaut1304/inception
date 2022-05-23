# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thhusser <thhusser@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/23 17:19:20 by thhusser          #+#    #+#              #
#    Updated: 2022/05/23 20:48:41 by thhusser         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
		/bin/bash	srcs/tools/build.sh
		cd srcs/ && sudo docker-compose up -d --build

clean:
		@cd srcs/ && sudo docker-compose down
		
fclean: clean
		sudo docker system prune --all --force
		sudo docker volume rm srcs_wp_files --force
		/bin/bash	srcs/tools/clean.sh