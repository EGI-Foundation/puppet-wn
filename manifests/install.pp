class wn::install () inherits wn::params {
  
  include fetchcrl

  if $manage_repo {
    $repos.each |$item| {
      yumrepo{$item:
        enabled  => 1,
        baseurl  => $item,
        gpgcheck => 0,
      }
    }
  }
  # package installation
  package { 'wn':
    ensure => 'installed',
  }
}
