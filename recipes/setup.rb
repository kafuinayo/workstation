package 'tree' do
	action :install
end

package 'git' do
	action :install
end

package 'ntp' do 
	action :install
end

package 'nano' do
	action :install
end

file '/etc/motd' do
	content 'This server is the property of Kafui Nayo'
	owner 'root'
	group 'root'
end

service 'ntpd' do
	action [ :enable, :start ]
end
