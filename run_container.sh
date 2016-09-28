# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run_container.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fbellott <fbellott@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/20 11:49:30 by fbellott          #+#    #+#              #
#    Updated: 2016/09/26 15:17:17 by fbellott         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

dir=/Users/Shared
container_name='sails'
#container_name=$1

#if [ $# -le 0 ]; then
#	echo 'Usage: '$0' <image_name> <dir_to_copy>'
#	exit 1
#fi

if [ $# -ge 2 ] && [ ! -d $dir/Server ]; then
	cp -r $2 $dir/Server &&
		chmod 700 $dir/Server &&
		echo $2' was copied to '$dir'/Server. Remeber to delete it ! ;]'
fi

if [ "`docker ps | grep '1337'`" == '' ]; then
	docker run -p 1337:1337 -it --add-host="localhost:192.168.99.100" -v /Users/Shared/Server:/root/Server $container_name /bin/bash
else
	docker run -it --add-host="localhost:192.168.99.100" -v /Users/Shared/Server:/root/Server $container_name /bin/bash
fi

exit 0
