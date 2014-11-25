class proj::install {
  package { $::proj::params::packages:
    ensure => present,
  }
}
