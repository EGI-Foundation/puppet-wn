class wn::service () inherits wn::params {

  Class[wn::config] -> Class[wn::service]

  service {'fetch-crl-cron':
     ensure    => running,
     enable    => true,
     provider  => systemd,
   }
}
