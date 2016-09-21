FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y git ruby-dev curl nodejs vim

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN echo 'gem: --no-document' >> ~/.gemrc
RUN echo 'git config --global user.email "belotte1355@gmail.com"' >> ~/.bashrc
RUN echo 'git config --global user.name "fbellott"' >> ~/.bashrc
RUN echo 'cd /root/Web' >> ~/.bashrc
RUN echo 'bundle install' >> ~/.bashrc

RUN gem update --system
RUN gem install bundler

#ADD Web/Gemfile /root/
#ADD Web/Gemfile.lock /root/
ADD _git /usr/local/bin
#WORKDIR /root/

#RUN bundle install

EXPOSE 22 3000

# CMD ['rails', 's', '--binding=0.0.0.0']
