class skeleton {
  file { '/etc/skel':
    ensure => directory,   # what value should go here?
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }
  
  file { '/etc/shel/.bashrc':
    ensure => file,
    source => 'puppet:///skeleton/bashrc',
    mode => '0755',
    requires => File['/etc/skel'],
  }
  
  # add a resource to manage /etc/skel/.bashrc


}
