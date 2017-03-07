require 'spec_helper'

describe command('java -version') do
    its(:stderr){ should include 'openjdk version "1.8' }
end

# This is really for Jenkins, but it still has Hudson references
describe command('curl http://localhost:8080') do
    its(:stderr) { should_not include 'Connection refused' }
    its(:stdout) { should include 'Hudson' }
end

describe 'Packer' do
    describe command('packer --version') do
        its(:stdout) { should eq "0.12.3\n" }
    end
end
