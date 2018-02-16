## puppet-wn module

This is the puppet-wn module, it installs the wn middleware and configure users and VOMS 

## Dependencies
The Module depends on:
* puppet-fetchrl (https://github.com/voxpupuli/puppet-fetchcrl)
* puppet-stdlibs (https://github.com/puppetlabs/puppetlabs-stdlib)
* puppet-voms_client (https://github.com/HEP-Puppet/puppet-voms_client)
* puppet-localfolder (https://github.com/HEP-Puppet/puppet-localfolder)
* puppet-gridaccounts (https://github.com/HEP-Puppet/puppet-grid_accounts)

## Configuration

The WN by default configures the VOMS vos, the users and the repository to use for the installation of the WN middleware.

The conifuguration parameter to drive this behaviour are:

* wn::params::install_repos ( default true)
* wn::params::configure_vos  ( default true)
* wn::params::configure_users  ( default true)

The repository to use for the installations can be configured via the parameter

* wn::params::repos ( by default, EPEL, UMD4 base and updates are configured, see https://github.com/HEP-Puppet/puppet-wn/blob/master/manifests/params.pp#L6)


The users to configure in the system and the base folders for their home are configured via:

* wn::params::dirs_path
* wn::params::home_path
* wn::params::pool_users

see https://github.com/HEP-Puppet/puppet-wn/blob/master/manifests/params.pp#L103 for the default values

Finally the VOMS configuration is driven by the parameter:

* wn::params::vo_vomses

see https://github.com/HEP-Puppet/puppet-wn/blob/master/manifests/params.pp#L45

### License
ASL 2.0
