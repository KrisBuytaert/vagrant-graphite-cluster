node 'graphite-grafana' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }

  yumrepo { 'grafana':
    descr         => 'grafana',
    baseurl       => 'https://packagecloud.io/grafana/stable/el/6/$basearch',
    repo_gpgcheck => 1,
    enabled       => 1,
    gpgcheck      => 1,
    gpgkey        => 'https://packagecloud.io/gpg.key https://grafanarel.s3.amazonaws.com/RPM-GPG-KEY-grafana',
  }

}
