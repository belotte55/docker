# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    update_npm.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fbellott <fbellott@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/28 14:37:40 by fbellott          #+#    #+#              #
#    Updated: 2016/09/28 14:37:55 by fbellott         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'PATH=~/.npm-global/bin:$PATH' >> ~/.zshrc
echo 'Done.'
