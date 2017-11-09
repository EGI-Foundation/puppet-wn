class wn::install () inherits wn::params {
  
  include fetchcrl

  if $managerepo {
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
