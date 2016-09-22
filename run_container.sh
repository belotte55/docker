# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run_container.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fbellott <fbellott@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/20 11:49:30 by fbellott          #+#    #+#              #
#    Updated: 2016/09/22 12:45:19 by fbellott         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

dir=/Users/Shared

if [ $# -le 0 ]; then
	echo 'Usage: '$0' <image_name> <dir_to_copy>'
	exit 1
fi

if [ $# -ge 1 ] && [ ! -d $dir/Web ]; then
	cp -r $2 $dir/Server &&
		chmod 700 $dir/Server &&
		echo $2' was copied to '$dir'/Server. Remeber to delete it ! ;]' &&
		docker run -P -it -v /Users/Shared/Server:/root/Server $1 /bin/bash
else
	docker run -P -it $1 /bin/bash
fi

exit 0
