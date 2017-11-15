class wn::config() inherits wn::params{
 
 class{'local::create_dirs':
   dirs_path => $dirs_path,
 }

 if ($configure_vos) {
   class{'voms_client':
     vo_vomses => $vo_vomses,
   }
 }

 if ($configure_users) {
   class{'grid_accounts':
     pool_users => $pool_users,
     home_path  => $home_path, 
     resources  => $resources
   }
  }
}
