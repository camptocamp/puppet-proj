class proj::augeas {
  ::augeas::lens { 'EPSGL lens':
    ensure      => 'present',
    lens_source => "puppet:///modules/${module_name}/lenses/epsg.aug",
  }
}
