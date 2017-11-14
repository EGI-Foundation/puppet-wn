class wn::install () inherits wn::params {
  
  include fetchcrl

  if $install_repos {
    create_resources(yumrepo,$repos)
  }
  # package installation
  package { 'wn':
    ensure => 'installed',
  }
}
