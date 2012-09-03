#!/bin/bash
#
# puppet this host...

puppet apply --debug --verbose --modulepath /vagrant/modules /vagrant/modules/base.pp

