#!/bin/bash -ex

export RUBY_INSTALL_VERSION=0.5.0
export RUBY_VERSION=2.0.0-p576

cd /tmp

wget -O ruby-install-$RUBY_INSTALL_VERSION.tar.gz \
  https://github.com/postmodern/ruby-install/archive/v$RUBY_INSTALL_VERSION.tar.gz
tar -xzf ruby-install-$RUBY_INSTALL_VERSION.tar.gz

cd ruby-install-$RUBY_INSTALL_VERSION

make install

ruby-install -i /usr/local ruby $RUBY_VERSION

make uninstall

rm -rf /usr/local/src/ruby*
rm -rf /tmp/*
