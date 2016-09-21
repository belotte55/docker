# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install_machine.sh                                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fbellott <fbellott@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/19 13:36:38 by fbellott          #+#    #+#              #
#    Updated: 2016/09/20 11:46:37 by fbellott         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

MACHINE_NAME='default'

echo "export MACHINE_STORAGE_PATH=/sgoinfre/goinfre/Perso/`whoami`" >> ~/.zshrc
~/.zshrc
docker-machine create --driver virtualbox $MACHINE_NAME
#cp -r ~/.docker/* /sgoinfre/goinfre/Perso/`whoami`/docker/
#mv ~/.docker ~/.Trash/docker
#ln -s /sgoinfre/goinfre/Perso/`whoami`/docker ~/.docker
docker-machine env $MACHINE_NAME >> ~/.zshrc
echo 'eval "$(docker-machine env '$MACHINE_NAME')"' >> ~/.zshrc
~/.zshrc
