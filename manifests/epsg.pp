define proj::epsg (
  $ensure = 'present',
  $file = '/usr/share/proj/epsg',
  $options = {},
  $flags = [],
) {
  require ::proj::augeas

  case $ensure {
    'present': {
      $kv_options = join_keys_to_values($options, ' ')
      $changes = flatten([
        'rm ./*',
        prefix($kv_options, 'set '),
        prefix($flags, 'clear ')
        ])
    }

    'absent': {
      $changes = "rm ${name}"
    }

    default: {
      fail "\$ensure should be 'present' or 'absent', not '${ensure}'"
    }
  }
  
  augeas { "Set up EPSG ${title}":
    incl    => $file,
    lens    => 'EPSG.lns',
    context => "/files${file}/${name}",
    changes => $changes,
  }
}
