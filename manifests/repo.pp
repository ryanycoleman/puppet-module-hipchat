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
			
    }
    
  }
  
}