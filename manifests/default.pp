exec { 'splunk-install':
    command  => 'dpkg --install /vagrant/splunk-5.0.4-172409-linux-2.6-amd64.deb',
    cwd      => '/vagrant',
    path     => '/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin',
}

exec { 'start_splunk':
    command   => "/opt/splunk/bin/splunk start --accept-license --answer-yes --no-prompt",
}

Exec['splunk-install'] -> Exec['start_splunk']
