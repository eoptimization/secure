class secure::kernel {

# Disable. Value of /proc/sys/net/ipv4/ip_forward should be 0 to disable
  sysctl { 'net.ipv4.ip_forward':
    ensure    => 'present',
    permanent => 'yes',
    value     => '0',
  }

  sysctl { 'net.ipv6.conf.all.accept_ra':
    ensure    => 'present',
    permanent => 'yes',
    value     => '0',
  }

  # Enable
  sysctl { 'net.ipv4.conf.all.send_redirects':
    ensure    => 'present',
    permanent => 'yes',
    value     => '0',
  }

  sysctl { 'net.ipv4.conf.all.log_martians':
    ensure    => 'present',
    permanent => 'yes',
    value     => '1',
  }

  sysctl { 'net.ipv4.conf.default.log_martians':
    ensure    => 'present',
    permanent => 'yes',
    value     => '1',
  }


  sysctl { 'net.ipv4.icmp_echo_ignore_broadcasts':
    ensure    => 'present',
    permanent => 'yes',
    value     => '1',
  }

  sysctl { 'net.ipv4.icmp_ignore_bogus_error_responses':
    ensure    => 'present',
    permanent => 'yes',
    value     => '1',
  }
# TCP SYN Flood Protection
  sysctl { 'net.ipv4.tcp_syncookies':
    ensure    => 'present',
    permanent => 'yes',
    value     => '1',
  }

  
}
