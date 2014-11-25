# Proj

[![Puppet Forge](http://img.shields.io/puppetforge/v/camptocamp/proj.svg)](https://forge.puppetlabs.com/camptocamp/proj)
[![Build Status](https://travis-ci.org/camptocamp/puppet-proj.png?branch=master)](https://travis-ci.org/camptocamp/puppet-proj)

## Overview

The proj module allows to configure the [PROJ](http://trac.osgeo.org/proj/) library.

## Usage

### proj

The `proj` class sets up the PROJ library:

```puppet
include ::proj
```

### proj::epsg

The `proj::epsg` definition allows you to add projections to an EPSG file:

```puppet
::proj::epsg { '900913':
  ensure         => 'present',
  file           => '/opt/myepsg',
  options        => {
     "+proj"     => "merc",
     "+a"        => "6378137",
     "+b"        => "6378137",
     "+lat_ts"   => "0.0",
     "+lon_0"    => "0.0",
     "+x_0"      => "0.0",
     "+y_0"      => "0",
     "+k"        => "1.0",
     "+units"    => "m",
     "+nadgrids" => "@null",
  },
  flags         => [ "+wktext", "+no_defs" ],
}
```


## Contributing

Please report bugs and feature request using [GitHub issue
tracker](https://github.com/camptocamp/puppet-proj/issues).

For pull requests, it is very much appreciated to check your Puppet manifest
with [puppet-lint](https://github.com/camptocamp/puppet-proj/issues) to follow the recommended Puppet style guidelines from the
[Puppet Labs style guide](http://docs.puppetlabs.com/guides/style_guide.html).

## License

Copyright (c) 2014 <mailto:puppet@camptocamp.com> All rights reserved.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

