include apt
apt::ppa { 'ppa:webupd8team/java': }


Package { ensure => 'installed' }
package {'oracle-java8-installer': }
package {'oracle-java8-set-default': }

$utilities = ['librarian-puppet', 'tmux', 'tree', 'git', 'vim', 'emacs']
$pythondev = ['python-dev', 'python-virtualenv']
$monitor = ['iotop', 'sysstat', 'iftop', 'htop', 'iptraf']
package {$utilities: } 
package {$pythondev: } 
package {$monitor: } 


user {'wortel':
    ensure => 'present',
    home   => '/home/wortel',
    shell  => '/bin/bash',
    password => 'qeZ8GGmpP50Ao'
}

