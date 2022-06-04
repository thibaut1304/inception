# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thhusser <thhusser@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/23 17:19:20 by thhusser          #+#    #+#              #
#    Updated: 2022/06/04 23:39:39 by thhusser         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
		/bin/bash	srcs/tools/build.sh
		cd srcs/ && sudo docker-compose up -d --build

logs:
		@cd srcs/ && docker-compose logs

up:
		@cd srcs/ && docker-compose up -d

clean:
		@cd srcs/ && docker-compose down

fclean: clean
		docker system prune -af
		docker volume rm -f srcs_dbdata
		docker volume rm -f srcs_wp_files
		/bin/bash	srcs/tools/clean.sh
