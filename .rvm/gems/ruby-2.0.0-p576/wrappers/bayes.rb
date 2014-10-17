#!/usr/bin/env bash

if
  [[ -s "/home/joonghopark/.rvm/gems/ruby-2.0.0-p576/environment" ]]
then
  source "/home/joonghopark/.rvm/gems/ruby-2.0.0-p576/environment"
  exec ruby bayes.rb "$@"
else
  echo "ERROR: Missing RVM environment file: '/home/joonghopark/.rvm/gems/ruby-2.0.0-p576/environment'" >&2
  exit 1
fi
