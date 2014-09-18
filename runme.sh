#!/bin/sh
#
# Shell script to run Ruby application inside a Docker container
#
# See also:
# - https://registry.hub.docker.com/_/ruby/
# - https://github.com/docker-library/ruby

WORKDIR=/usr/src/learning-ruby
#MAINPGM=helloworld.rb
MAINPGM=try-arrays.rb

docker run -it --rm --name my-running-script \
	-v "$(pwd):${WORKDIR}" ruby:2.1.2 ruby "${WORKDIR}/${MAINPGM}"
