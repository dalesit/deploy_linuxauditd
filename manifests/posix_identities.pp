# Class: deploy_linuxauditd::posix_identities
# ===========================
#
# Full description of class deploy_linuxauditd::posix_identities here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'deploy_linuxauditd::posix_identities':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class deploy_linuxauditd::posix_identities (
  String $owner = $::deploy_linuxauditd::owner,
  String $group = $::deploy_linuxauditd::group
){

  file { '/opt/splunk/etc/apps/TA_linux-auditd/lookups/local_posix_identities.csv':
    content => template('deploy_linuxauditd/local_posix_identities.csv.erb'),
    owner   => $owner,
    group   => $group,
    require => File['/opt/splunk/etc/apps/linux-auditd']
  }

}
