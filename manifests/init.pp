class virtualbox(
  $ensure      = installed,
  $version     = '4.2',
  $manage_repo = true
) {

  if $manage_repo == true {
    yumrepo { 'virtualbox':
      descr      => 'Oracle Linux / RHEL / CentOS-$releasever / $basearch - VirtualBox',
      baseurl    => 'http://download.virtualbox.org/virtualbox/rpm/el/$releasever/$basearch',
      enabled    => 1,
      gpgcheck   => 1,
      gpgkey     => 'http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc',
      priority   => 10,
      before     => Package['virtualbox'];
    }
  }

  package { 'virtualbox':
    name   => "VirtualBox-${version}"
    ensure => $ensure
  }

}
