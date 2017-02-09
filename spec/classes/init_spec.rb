require 'spec_helper'
describe 'deploy_linuxauditd' do
  context 'with default values for all parameters' do
    it { should contain_class('deploy_linuxauditd') }
  end
end
