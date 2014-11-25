require 'spec_helper'

describe 'proj' do
  context 'when on Debian' do
    let (:facts) { {
      :osfamily => 'Debian',
    } }

    it { should compile.with_all_deps }
  end

  context 'when on RedHat' do
    let (:facts) { {
      :osfamily => 'RedHat',
    } }

    it { should compile.with_all_deps }
  end
end
