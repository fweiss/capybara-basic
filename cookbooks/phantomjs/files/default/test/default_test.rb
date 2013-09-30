# phantomjs

require 'minitest/spec'
require 'open3'

describe_recipe 'phantomjs' do

  it 'should run phantomjs and print the correct version' do
    cmd = 'phantomjs -v'
    Open3.popen3(cmd) do |stdin, stdout, stderr|
      stdout.read.must_match /1.9.2/
    end
  end

end