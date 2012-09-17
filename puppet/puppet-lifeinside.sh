#!/bin/bash
#
# build docs
puppetdoc --mode rdoc --outputdir /vagrant/rdoc/ --modulepath /vagrant/puppet/modules --manifestdir /vagrant/puppet/manifests
# puppet this host...
puppet apply --debug --verbose --modulepath /vagrant/puppet/modules /vagrant/puppet/lifeinside.pp

