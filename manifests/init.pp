class proj {
  anchor { 'proj::begin': } ->
  class { '::proj::install': } ->
  anchor { 'proj::end': }
}
