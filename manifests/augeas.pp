class proj::augeas {
  ::augeas::lens { 'epsg':
    ensure      => 'present',
    lens_source => "puppet:///modules/${module_name}/lenses/epsg.aug",
  }
}
