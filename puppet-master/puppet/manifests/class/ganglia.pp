class ganglia {

	$master_ip = "192.168.122.15"
        file { "/etc/ganglia/gmond.conf":
                ensure => 'file',
		content => template('/etc/puppet/templates/gmond.conf.erb'),
		mode => '644',
		require => Package["ganglia-monitor"]
        }
	package { 'ganglia-monitor':
     		ensure => present,
    	}
	service { 'ganglia-monitor':
     		ensure    => running,
      		enable    => true,
		require => Package["ganglia-monitor"]

    }

}
