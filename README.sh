#!/bin/bash
#
# seed your environment with the following steps
(cd modules ; git checkout https://github.com/simonmcc/puppet-logstash.git logstash )

git submodule add modules/logstash

vagrant up

# you can either test your work with "vagrant provision" from the host
# or by running /vagrant/puppet.sh from inside the guest
