#!/bin/sh

curl https://raw.githubusercontent.com/Ghosh/uiGradients/master/gradients.json | ruby ${BASH_SOURCE%/*}/parse.rb
