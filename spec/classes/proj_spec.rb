require 'spec_helper'

describe 'proj' do

  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts.merge({
          :puppetversion => Puppet.version,
        })
      end

        it { is_expected.to compile.with_all_deps }
    end
  end
end
