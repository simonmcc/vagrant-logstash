require atgos::lifeinside

class { 'logstash::common':
  logstash_home => '/opt/logstash',
  logstash_jar_provider => 'puppet',
  logstash_transport => 'redis',
  redis_provider     => 'package',
}

class { 'logstash::indexer': }
class { 'logstash::shipper': }
class { 'logstash::web': }
class { 'logstash::redis': }
