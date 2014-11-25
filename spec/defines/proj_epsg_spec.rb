require 'spec_helper'

describe 'proj::epsg' do
  let (:title) { '900913' }

  let (:pre_condition) { 'require ::augeas' }

  let (:facts) { {
    :osfamily    => 'Debian',
    :rubyversion => RUBY_VERSION,
    :path        => '/foo/bar',
  } }

  context 'with no options' do
    it { should compile.with_all_deps }
  end

  context 'when passing options' do
    let (:params) { {
      :file    => '/foo/bar/epsg',
      :options => {
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
      :flags   => [ "+wktext", "+no_defs" ],
    } }

    it { should compile.with_all_deps }
  end
end
