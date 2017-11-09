class wn () inherits wn::params {

  Class[wn::install] -> Class[wn::config]

  class{"wn::install":}
  class{"wn::config":}

}
