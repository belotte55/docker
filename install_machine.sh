# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install_machine.sh                                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fbellott <fbellott@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/19 13:36:38 by fbellott          #+#    #+#              #
#    Updated: 2016/09/28 14:13:04 by fbellott         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

MACHINE_NAME='default'

if [ -d ~/.docker ]; then
	echo 'You have a ~/.docker directory. Please rm/mv it.'
	exit 1
fi

echo "export MACHINE_STORAGE_PATH=/sgoinfre/goinfre/Perso/`whoami`" >> ~/.zshrc
chmod +x ~/.zshrc
source ~/.zshrc
chmod 700 /sgoinfre/goinfre/Perso/`whoami`
docker-machine create --driver virtualbox $MACHINE_NAME
docker-machine env $MACHINE_NAME >> ~/.zshrc
echo 'eval "$(docker-machine env '$MACHINE_NAME')"' >> ~/.zshrc
source ~/.zshrc
docker-machine stop $MACHINE_NAME
vboxmanage modifyvm default --natpf1 "nameformapping,tcp,,1337,,1337"
docker-machine start $MACHINE_NAME
