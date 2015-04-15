class proj::augeas {
  ::augeas::lens { 'epsg':
    ensure       => 'present',
    lens_content => file('proj/lenses/epsg.aug'),
  }
}
