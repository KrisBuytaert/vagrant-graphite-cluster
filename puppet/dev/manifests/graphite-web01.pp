node 'graphite-web01' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }
  class { 'graphite::web':
    cluster_servers => ['192.168.1.102','192.168.1.104'],
  }
}
