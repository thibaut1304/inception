# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thhusser <thhusser@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/23 17:19:20 by thhusser          #+#    #+#              #
#    Updated: 2022/05/23 17:55:09 by thhusser         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
		/bin/bash	srcs/tools/build.sh
		cd srcs/ && docker-compose up -d --build

clean:
		@cd srcs/ &&  docker-compose down
		
fclean: clean
		docker system prune --all --force
		docker volume rm srcs_wp_files --force
		/bin/bash	srcs/tools/clean.sh