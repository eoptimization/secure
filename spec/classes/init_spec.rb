require 'spec_helper'
describe 'secure' do
  context 'with default values for all parameters' do
    it { should contain_class('secure') }
  end
end
