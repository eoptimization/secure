# Class: secure
# ===========================
#
# Full description of class secure here.
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
#    class { 'secure':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name Joseph Yousefpour
# email: joseph@enterprisetechs.com
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
  class secure {
  
    include secure::packages
    include secure::auditd_rules
    include secure::fstab
    include secure::kernel
    include secure::permissions
    include secure::banner
    
}

