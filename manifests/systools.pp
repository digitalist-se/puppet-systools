class systools (
  $module_root = '/tmp/vagrant-puppet/manifests/modules/systools',
  $packages = [
    'emacs23',
    'php-elisp',
    'puppet-el',
    'htop'
  ]
) {
  package { $packages:
    ensure => installed,
  }

  exec { 'apt-get update':
    command => "/usr/bin/apt-get update"
  }

  Package { require => Exec['apt-get update'] }
}
