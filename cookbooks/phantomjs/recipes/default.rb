# phantomjs

# not been able to get zypper to use the local file, so usisng exec directly
#package 'fontconfig.x86_64' do
#  action :install
#  version '2.8.0-19.1'
#  source '/vagrant/fontconfig-2.8.0-19.1.x86_64.rpm'
#end

#execute 'zypper --non-interactive install /vagrant/fontconfig-2.8.0-19.1.x86_64.rpm'

unless File.directory?('/usr/lib64/phantomjs-1.9.2-linux-x86_64')

  execute 'cd /usr/lib; tar -xjf /vagrant/phantomjs-1.9.2-linux-x86_64.tar.bz2'

  file '/etc/profile.d/phantomjs.sh' do
    mode "644"
    owner "root"
    group "root"
    content "PATH=/usr/lib/phantomjs-1.9.2-linux-x86_64/bin:$PATH"
    action :create
  end

end
