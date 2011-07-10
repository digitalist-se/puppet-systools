class systools (
  $packages = [
    'emacs23-nox',
    'php-elisp',
    'puppet-el',
    'htop',
    'git-core',
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
