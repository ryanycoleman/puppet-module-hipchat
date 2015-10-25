class hipchat::repo {
  
  case $osfamily {
    'Debian': {
      
      apt::source { 'hipchat':
			  location          => 'https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client',
			  release           => "$lsbdistcodename",
			  repos             => 'main',
			  include           => { 'src' => false },
			}
			
			apt::key { 'hipchat':
			  id     => 'FD1ACC751D0106938C1E6B33EBA59E53CC64091D',
			  source => 'https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public',
			}
			
    }
    
  }
  
}
