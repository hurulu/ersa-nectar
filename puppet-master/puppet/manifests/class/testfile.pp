class testfile {

	$master_ip = "192.168.122.3\n"
	$devs = [sda,sdb,sdc]
        file { "/tmp/testfile.sh":
                ensure => 'file',
		content => template('/etc/puppet/templates/testfile.erb'),
		mode => '755'
        }
	exec { "hello":
		cwd => "/tmp",
		command => "sh /tmp/testfile.sh",
		user => "root",
		path => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin",
	}	
}
