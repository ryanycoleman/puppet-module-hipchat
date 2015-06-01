class hipchat::repo {

  case $osfamily {
    'Debian': {

      apt::source { 'hipchat':
        location          => 'http://downloads.hipchat.com/linux/apt',
        release           => 'stable',
        repos             => 'main',
        include_src       => false,
      }

      apt::key { 'hipchat':
        key_source => 'https://www.hipchat.com/keys/hipchat-linux.key',
      }
      'RedHat': {

        yumrepo { 'hipchat' :
          name      => 'atlassian-hipchat',
          ensure    => present,
          baseurl   => 'http://downloads.hipchat.com/linux/yum',
          enabled   => 1,
          gpgcheck  => 1,
          gpgkey    => 'https://www.hipchat.com/keys/hipchat-linux.key',
        }
      }

    }

  }

}
