# use this to setup for life inside Oracle
# (configures proxy etc)
# require atgos::lifeinside

# there is a redis RPM here:
yumrepo { 'yum.mccartney.ie':
  baseurl  => 'http://yum.mccartney.ie',
  descr    => 'redis for el',
  gpgcheck => 0,
}

class { 'logstash::config':
  logstash_home          => '/opt/logstash',
  logstash_jar_provider  => 'http',
  logstash_transport     => 'redis',
  redis_provider         => 'package',
  elasticsearch_provider => 'embedded',
}

class { 'logstash::indexer': }
class { 'logstash::shipper': }
class { 'logstash::web': }
class { 'logstash::redis': }
