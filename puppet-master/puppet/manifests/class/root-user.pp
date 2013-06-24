class root-user {

user { "root":
   ensure => 'present',
   home =>  '/root',
   shell =>  "/bin/bash",
   managehome => 'true',
   password => '$6$q6mAb8jr$/7hPYwQuZb369rQkpUXeAu.d/TLSiCwyMv0wlJaTb9udvAlyqpccwAX1tQbdRBiYe4sBBcea9II6PLB54qGXH/',
} 
file { "/root/.ssh":
   ensure => directory,
} 
}
