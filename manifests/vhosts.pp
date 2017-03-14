class apache::vhosts {
file { '/etc/httpd/conf.d/vhost.conf':
      ensure    => file,
      content   => template('apache/vhosts-rh.conf.erb'),
    }
	file { "/var/www/$servername":
      ensure    => directory,
    }
    file { "/var/www/$servername/public_html":
      ensure    => directory,
    }
    file { "/var/www/$servername/log":
    ensure    => directory,
    }
	}