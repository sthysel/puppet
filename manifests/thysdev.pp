#class {'java':
#    apt::ppa { 'ppa:webupd8team/java':}
#    stage => 'setup'
#}

node xps {

    include ccgcommon
    include repo::ubuntuccg
    # include java

    #apt::ppa { 'ppa:webupd8team/java':}
    Package { ensure => 'installed' }

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
                 'ccg',
                 # java
                 #'oracle-java8-installer', 'oracle-java8-set-default',
                ]

    package {$packages: } 

    user {'wortel':
        ensure => 'present',
        home   => '/home/wortel',
        shell  => '/bin/bash',
        password => 'qeZ8GGmpP50Ao'
    }
}

