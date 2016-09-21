# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run_container.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fbellott <fbellott@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/20 11:49:30 by fbellott          #+#    #+#              #
#    Updated: 2016/09/20 11:52:45 by fbellott         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

dir=/Users/Shared

if [ ! -d $dir/Web ]; then
	cp -r Web /Users/Shared
fi
docker run -P -it -v /Users/Shared/Web:/root/Web rails
