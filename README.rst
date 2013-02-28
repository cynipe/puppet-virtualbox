===================================
Puppet Module for Oracle VirtualBox
===================================

Usage
=====

Install latest VirtualBox::

  include virtualbox


Specifying virsion::

  class { 'virtualbox'
    version => '4.1'
  }

If you want manage yumrepo by yourself, set manage_repo to false::

  class { 'managed_yumrepo':
    before => Class['virtualbox']
  }
  class { 'virtualbox'
    manage_repo => false;
  }

Or, you can use stage to ensure yumrepo setuped::

  stage { 'setup': before => Stage['main'] }
  class {'managed_yumrepo':
    stage => setup,
  }

