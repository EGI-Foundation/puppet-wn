class wn::config() inherits wn::params{
  if ($configure_vos) {
    class{'wn::voms_client':
      vo_vomses => $vo_vomses,
    }
  }
}
