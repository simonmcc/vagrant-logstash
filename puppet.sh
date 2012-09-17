#!/bin/bash
#
# puppet this host...

MODULES=/vagrant/modules
MANIFESTS=/vagrant/manifests
MANIFEST='base.pp'

# build docs
puppetdoc --mode rdoc --outputdir /vagrant/rdoc/ --modulepath $MODULES --manifestdir $MANIFESTS

# run puppet
puppet apply --debug --verbose --modulepath $MODULES ${MANIFESTS}/${MANIFEST}

