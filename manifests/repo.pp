class hipchat::repo {

  case $::osfamily {
    'Debian': {
      apt::source { 'hipchat':
        location    => 'http://downloads.hipchat.com/linux/apt',
        release     => 'stable',
        repos       => 'main',
        include_src => false,
        key         => {
          source => 'https://www.hipchat.com/keys/hipchat-linux.key',
        },
      }
    }
    default: {
      fail("${::osfamily} is not supported")
    }
  }
}
