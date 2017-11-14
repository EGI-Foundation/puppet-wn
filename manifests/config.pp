class wn::config() inherits wn::params{
  class{'wn::voms_client':
    vo_vomses => $vo_vomses,
  }
}
