#!/bin/sh
bundle exec jekyll build
rm _site/config.codekit3 _site/build.sh _site/serveTest.sh _site/rakefile.rb
#rsync -auv _site onevcat@onevcat.com:/home/onevcat/www/blog