class riemann::params {
  $version = '0.2.1'
  $config_file = '/etc/riemann.sample.config'
  $dash_port = 4567
  $dash_host = 'localhost'
  $dash_user = 'riemann-dash'
  $dash_config_path = '/etc/riemann-dash'
  $net_user = 'riemann-net'
  $health_user = 'riemann-health'
  $port = 5555
  $host = 'localhost'
  $user = 'riemann'

  case $::osfamily {
    'Debian': {
      $service_provider = upstart
      $libxml_package = 'libxml2-dev'
      $libxslt_package = 'libxslt-dev'
    }
    'RedHat', 'Amazon': {
      include epel
      $service_provider = redhat
      $libxml_package = 'libxml2-devel'
      $libxslt_package = 'libxslt-devel'
      $gem_path = $::operatingsystemrelease ? {
        '5.8'   => '/usr/local/bin/',
        default => '/usr/bin/',
      }
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }

}
