include ccgcommon
include repo::ubuntuccg

#apt::ppa { 'ppa:webupd8team/java': }

Package { ensure => 'installed' }
package {'oracle-java8-installer': }
package {'oracle-java8-set-default': }

$packages = ['librarian-puppet', 
             'tmux', 
             'tree', 
             'git', 
             'vim', 
             'emacs', 
             'mercurial', 
             'mercurial-keyring',
             'graphviz',
             # python
             'python-dev', 'python-virtualenv',
             # monitoring
             'iotop', 'sysstat', 'iftop', 'htop', 'iptraf',
             'ccg'
            ]

package {$packages: } 

user {'wortel':
    ensure => 'present',
    home   => '/home/wortel',
    shell  => '/bin/bash',
    password => 'qeZ8GGmpP50Ao'
}

