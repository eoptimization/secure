#  Controls FSTAB
# Per CIS benchmark setting this configuration changes the FSTAB settings. mount settings will be changed to restricted and fstab will be locked down

class secure::fstab {
    file {'/etc/fstab':
    owner   => root,
    group   => root,
    mode    => '0600',
  }

  mount {'/tmp':
    options => 'nodev,nosuid,noexec',
  }

  mount {'/var':
    options => 'nodev',
  }

  mount {'/var/log':
    options => 'nodev',
  }

  mount {'/var/log/audit':
    options => 'nodev',
  }

  mount {'/home':
    options => 'nodev',
  }

  mount {'/opt':
    options => 'nodev',
  }




}
