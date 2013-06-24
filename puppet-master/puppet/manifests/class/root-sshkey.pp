class root-sshkey {

        ssh_authorized_key { "root":
           ensure => 'present',
	   key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDeFDmxziKkRRZ6PDglXhASlra5AqmQCPHgL7QNNf/C5IWMRPMoNgZGHsASL1jF+Eujg/WzSVTVL4mhT17T+X0X3gY7Tx6OA6XdZKzE1DGwE2p9lQLtlWS60GMqJIsqV5HtCaQGvu8Pwc5sxheDa9IKEWgv7+s8DothyZ5zbEuM0tKLcu161untx278H8CUIK8PnqpwFhCtRzMSseJSVYcxiZoQ1XphR/4upDXes0JznU69ovGkNRKRj7JaK3lLVm7bI6LG70bPpkxiDUjQFZN0/P+W1vMGwNsmyc6t9nZqOJB5p6LRtB8NST3fGyx+2AhnE1gij3cpYaeHLMMbAs9b',
           type => 'ssh-rsa',
           user => 'root',
           require => File["/root/.ssh"],
        }
        file { "/root/.ssh/authorized_keys":
                ensure => 'file',
                owner => 'root',
                mode => '644',
        }
}
