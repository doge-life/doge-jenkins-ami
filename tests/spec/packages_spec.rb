require 'spec_helper'

describe 'OpenJDK' do
    describe 'Installation' do
        it 'should have installed the 1.8 JDK' do
            expect(command('java -version').stderr).to include 'openjdk version "1.8'
            expect(command('javac -version').stderr).to include 'javac 1.8'
        end
    end
end

describe 'Jenkins' do
    describe 'Installation' do
        subject { command('sudo service jenkins status') }

        it 'should be installed as a service' do
            expect(subject.stdout).to include 'Jenkins Continuous Integration Server'
        end
    end
end

describe 'Packer' do
    describe 'Installation' do
        subject { command('packer --version') }

        it 'should be on the PATH and have the right version' do
            expect(subject.stdout).to eq "0.12.3\n"
        end
    end
end
