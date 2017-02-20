#
# Permissions will be set below to secure the server
#
class secure::permissions {
  file {'/etc/hosts.allow':
    owner => root,
    group => root,
    mode  => '0644',
  }
  # create info file to puppet run audits 
  file {'/etc/info':
    ensure  => 'present',
    content => inline_template("This file was crated by Puppet Master at <%= Time.now %>\n"),
    owner   => root,
    group   => root,
    mode    => '0644',
  }
  #set permissions for hosts.deny
  file {'/etc/hosts.deny':
    owner => root,
    group => root,
    mode  => '0644',
  }
  #restrict access to /var/log/messages
  file {'/var/log/messages':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
  }
  #restrict access to /var/log/secure
  file {'/var/log/secure':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
  }
  #restrict access to /var/log/maillog
  file {'/var/log/maillog':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
  }
  #restrict access to rsyslogs
   file {'/var/log/cron':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
  }
  #restrcit access to rsyslogs
  file {'/var/log/spooler':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
  }
  # restrict access to rsyslogs
  file {'/var/log/boot.log':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
    }
    #restrict access to anacron 
    file {'/etc/anacrontab':
    owner => root,
    group => root,
    mode  => '0600',
  }
  # restrict access to crontab 
  file {'/etc/crontab':
    owner => root,
    group => root,
    mode  => '0600',
  #}
  # restrict access to hourly crontab
  #file {'/etc/cron.hourly':
   # owner => root,
   # group => root,
    #mode  => '0600',
  }
  # restrict access to daily cron
  file {'/etc/cron.daily':
    owner => root,
    group => root,
    mode  => '0600',
  }
  # restrict access to weekly cron
  file {'/etc/cron.weekly':
    owner => root,
    group => root,
    mode  => '0600',
  }
  # restrict access to the monthly cron 
  file {'/etc/cron.monthly':
    owner => root,
    group => root,
    mode  => '0600',
  }
  # restrict access to cron
  file {'/etc/cron.d':
    owner => root,
    group => root,
    mode  => '0700',
  }
  # restrict daemon use to allow users
  file {'/etc/at.deny':
    ensure  => absent,
  }
  # set default group for root
  user {'root':
    uid => 0,
    gid => 0,
  }
  # set permissions on passwd
   file {'/etc/passwd':
    owner   => root,
    group   => root,
    mode    => '0644',
  }
  # set permisssions on /etc/shadow
  file {'/etc/shadow':
    owner   => root,
    group   => root,
    mode    => '0000',
  }
  # set permissions on /etc/gshadow
  file {'/etc/gshadow':
    owner   => root,
    group   => root,
    mode    => '0000',
  }
  
  
}

