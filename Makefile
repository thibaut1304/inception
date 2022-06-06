# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thhusser <thhusser@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/23 17:19:20 by thhusser          #+#    #+#              #
#    Updated: 2022/06/06 19:09:37 by thhusser         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

_NC=`tput sgr0`
_RED=\033[0;31m
_GREEN=\033[0;32m
_YELLOW=\033[0;33m
_BLUE=\033[0;34m
_PURPLE=\033[0;95m
_CYAN=\033[0;36m
_WHITE=\033[0;37m

all:
		@/bin/bash	srcs/requirements/tools/build.sh
		@cd srcs/ && sudo docker-compose up -d --build
		@/bin/bash	srcs/requirements/tools/isReady.sh

logs:
		@cd srcs/ && sudo docker-compose logs

up:
		@cd srcs/ && sudo docker-compose up -d

down:
		@cd srcs/ && sudo docker-compose down

fclean: down
		@sudo docker system prune -af
		@echo -n "Delete all images ..."
		@echo " $(_GREEN)done$(_NC)"
		@/bin/bash	srcs/requirements/tools/fclean.sh
		@echo -n "Delete volume : "
		@sudo docker volume rm -f srcs_dbdata
		@echo -n "Delete volume : "
		@sudo docker volume rm -f srcs_wp_files

re: fclean all

.PHONY: all logs up clean fclean re
