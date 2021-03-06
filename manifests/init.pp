# Class: deploy_linuxauditd
# ===========================
#
# Full description of class deploy_linuxauditd here.
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
#    class { 'deploy_linuxauditd':
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
class deploy_linuxauditd (
  String $owner = 'splunk',
  String $group = 'splunk'
){
  file { '/opt/splunk/etc/apps/TA_linux-auditd/':
    ensure  => 'directory',
    source  => 'puppet:///modules/deploy_linuxauditd/TA_linux-auditd',
    owner   => $owner,
    group   => $group,
    recurse => true,
    replace => 'no',
    require => Package['splunk'],
  }
  file { '/opt/splunk/etc/apps/linux-auditd/':
    ensure  => 'directory',
    source  => 'puppet:///modules/deploy_linuxauditd/linux-auditd',
    owner   => $owner,
    group   => $group,
    recurse => true,
    replace => 'no',
    require => Package['splunk'],
  }

  include deploy_linuxauditd::posix_identities

}
