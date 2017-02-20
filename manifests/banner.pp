#
# Ensure a warning banner is presented upon login to the system.
#

class secure::banner {
  file {'/etc/issue.net':
    source  => 'puppet:///modules/secure/banner',
    owner   => root,
    group   => root,
    mode    => '0644',
  
  }
  file { ['/etc/issue', '/etc/motd']:
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/secure/banner',
  }
}
