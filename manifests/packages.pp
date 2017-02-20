# The following packages will be installed, cron for aide will be made
class secure::packages {
$basicpackages = [ 'rsyslog', 'gpg-pubkey']
  package { $basicpackages: ensure => 'installed' }

$toberemoved = [
        'dovecot',
        'squid',
        'mctrans',
        'telnet-server',
        'telnet',
        'rsh', 
        'ypserv',
        'tftp',
        'tftp-server',
        'talk',
        'talk-server',
        'xinetd',
        'xorg-x11-server-common',
        'dhcp',
        'openldap-servers',
        'openldap-clients',
        'bind',
        'vsftpd',
        'httpd',
        'samba',
        'chargen-dgram',
        'chargen-stream',
        'daytime-stream',
        'echo-stream',
        'tcpmux-server',
        
        ]

    package { $toberemoved: ensure => 'absent' }
    
    # Remove SETroubleshoot service
  package {'setroubleshoot':
    ensure => absent,
  }
  # Remove Avahi zeroconf 
  package {'avahi-daemon':
    ensure => absent,
  }
  #Remove MCS Translation Service.
 package {'mcstrans':
    ensure => absent,
  }
  #remove rsh server 
  package {'rsh-server':
    ensure => absent,
  }
  #remove ypbind 
  package {'ypbind':
    ensure => absent,

    
  }
    #install aide and create cron 
    package { 'aide': ensure => 'installed', } ->
    cron { 'aide_watch':
      command => '/usr/sbin/aide --check',
      user    => root,
      hour    => 5,
      minute  => 0
  } 
}
