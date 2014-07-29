node dev {

    include ccgcommon
    include repo::ubuntuccg
    include oraclejava::java8

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
                ]

    package {$packages: } 

    user {'wortel':
        ensure => 'present',
        home   => '/home/wortel',
        shell  => '/bin/bash',
        password => 'qeZ8GGmpP50Ao'
    }
}

node xps inherits dev {}
node thysxps inherits dev {}
node folly inherits dev {}

