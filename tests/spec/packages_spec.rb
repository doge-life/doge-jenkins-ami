require 'spec_helper'

describe command('java -version') do
    its(:stderr){ should include 'openjdk version "1.8' }
end

describe command('/usr/share/tomcat8/bin/catalina.sh version') do
    its(:stdout) { should contain 'Apache Tomcat/8.0'}
end

