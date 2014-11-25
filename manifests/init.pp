class proj inherits ::proj::params {
  anchor { 'proj::begin': } ->
  class { '::proj::install': } ->
  anchor { 'proj::end': }
}
