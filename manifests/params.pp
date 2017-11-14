class wn::params {
  $install_repos = true;
  $configure_vos = true;

  #repos
  
  # yaml examle
  # wn::params::repos: 
  #  epel:
  #    descr: 'Extra Packages for Enterprise Linux add-ons'
  #    baseurl: 'http://linuxsoft.cern.ch/epel/${lsbmajdistrelease}/\$basearch'
  #    gpgcheck: 0
  #    enabled: 1
  #     protect :1
 
  $repos = {
    'epel' => {
      'descr'    => 'Extra Packages for Enterprise Linux add-ons',
      'baseurl'  => "http://linuxsoft.cern.ch/epel/${lsbmajdistrelease}/\$basearch",
      'gpgcheck' => 0,
      'enabled'  => 1,
      'protect'  => 1,
     },
    'UMD-4-base' => {
      'descr'    => 'UMD 4 base (CentOS7)',
      'baseurl'  => "http://repository.egi.eu/sw/production/umd/4/centos7/\$basearch/base",
      'protect'  => 1,
      'enabled'  => 1,
      'priority' => 1,
      'gpgcheck' => 1,
      'gpgkey'   => "http://emisoft.web.cern.ch/emisoft/dist/EMI/3/RPM-GPG-KEY-emi http://repo-rpm.ige-project.eu/RPM-GPG-KEY-IGE http://repository.egi.eu/sw/production/umd/UMD-RPM-PGP-KEY http://www.qoscosgrid.org/qcg-packages/sl5/RPM-GPG-KEY-QCG http://download.nordugrid.org/RPM-GPG-KEY-nordugrid http://fedoraproject.org/static/0608B895.txt"
    },
    'UMD-4-updates' => {
      'descr'    => 'UMD 4 updates (CentOS7)',
      'baseurl'  => "http://repository.egi.eu/sw/production/umd/4/centos7/\$basearch/updates",
      'protect'  => 1,
      'enabled'  => 1,
      'priority' => 1,
      'gpgcheck' => 1,
      'gpgkey'   => "http://emisoft.web.cern.ch/emisoft/dist/EMI/3/RPM-GPG-KEY-emi http://repo-rpm.ige-project.eu/RPM-GPG-KEY-IGE http://repository.egi.eu/sw/production/umd/UMD-RPM-PGP-KEY http://www.qoscosgrid.org/qcg-packages/sl5/RPM-GPG-KEY-QCG http://download.nordugrid.org/RPM-GPG-KEY-nordugrid http://fedoraproject.org/static/0608B895.txt"
    }
   }

  #yaml example
  # wn::params::vo_vomses:
  #  atlas:
  #   - server: 'voms2.cern.ch'
  #     port: '15001'
  #     dn: '/DC=ch/DC=cern/OU=computers/CN=voms2.cern.ch'
  #     ca_dn: '/DC=ch/DC=cern/CN=CERN Grid Certification Authority'
  #   - server: 'lcg-voms2.cern.ch'
  #     port: '15001'
  #     dn: '/DC=ch/DC=cern/OU=computers/CN=lcg-voms2.cern.ch'
  #     ca_dn: '/DC=ch/DC=cern/CN=CERN Grid Certification Authority'
  #  cms:
  #   - server: 'voms2.cern.ch'
  #     port: '15002'
  #     dn: '/DC=ch/DC=cern/OU=computers/CN=voms2.cern.ch'
  #     ca_dn: '/DC=ch/DC=cern/CN=CERN Grid Certification Authority'
  #   - server: 'lcg-voms2.cern.ch'
  #     port: '15002'
  #     dn: '/DC=ch/DC=cern/OU=computers/CN=lcg-voms2.cern.ch'
  #     ca_dn: '/DC=ch/DC=cern/CN=CERN Grid Certification Authority'

  $vo_vomses = {
      'atlas' => [
          { 
     	   'server' => 'voms2.cern.ch',
           'port'   => '15001',
           'dn'     => '/DC=ch/DC=cern/OU=computers/CN=voms2.cern.ch',
           'ca_dn'  => '/DC=ch/DC=cern/CN=CERN Grid Certification Authority'
          },
          {
           'server' => 'lcg-voms2.cern.ch',
           'port'   => '15001',
           'dn'     => '/DC=ch/DC=cern/OU=computers/CN=lcg-voms2.cern.ch',
           'ca_dn'  =>  '/DC=ch/DC=cern/CN=CERN Grid Certification Authority'
          }
       ],
       'cms' => [  
         {
          'server' => 'voms2.cern.ch',
          'port'   => '15001',
          'dn'     => '/DC=ch/DC=cern/OU=computers/CN=voms2.cern.ch',
          'ca_dn'  => '/DC=ch/DC=cern/CN=CERN Grid Certification Authority'
        },
        {  
          'server' => 'lcg-voms2.cern.ch',
          'port'   => '15001',
          'dn'     => '/DC=ch/DC=cern/OU=computers/CN=lcg-voms2.cern.ch',
          'ca_dn'  =>  '/DC=ch/DC=cern/CN=CERN Grid Certification Authority'
       }]
   }
}
