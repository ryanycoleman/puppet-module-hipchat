class hipchat(
  $manage_repo = true,
) {

  if $manage_repo {
    require hipchat::repo
  }
  
  package { 'hipchat4':
    ensure => latest,
  }

}
