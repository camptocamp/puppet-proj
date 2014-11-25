class proj::params {
  case $::osfamily {
    'Debian': {
      $packages = ['libproj0', 'libproj-dev']
    }

    'RedHat': {
      $packages = ['proj', 'proj-dev']
    }

    default: {
      fail "Unsupported OS family ${::osfamily}"
    }
  }
}
