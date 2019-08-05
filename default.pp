$pacotesopensips = ['gcc', 'gcc-c++', 'epel-release', 'bison', 'flex', 'zlib-devel', 'openssl-devel', 'mariadb-devel', 'mariadb', 'subversion', 'pcre-devel']
user {'root':
  ensure => present,
  password => '$1$4/enXW3g$xiKNkxhlO5NEtbGJ7Td6q.'
}
package { 'vim-enhanced':
  ensure => installed
}
package { $pacotesopensips:
  ensure => installed
}
exec { " yum install http://yum.opensips.org/2.4/releases/el/7/x86_64/opensips-yum-releases-2.4-3.el7.noarch.rpm":
  cwd => "/var/tmp",
  path => ["/usr/bin", "/usr/sbin"]
}
package { 'opensips':
  ensure => installed,
}
