#cloud-config

coreos:
  etcd2:
    advertise-client-urls: http://$private_ipv4:2379
    initial-advertise-peer-urls: http://$private_ipv4:2380
    listen-client-urls: http://0.0.0.0:2379,http://0.0.0.0:4001
    listen-peer-urls: http://$private_ipv4:2380
    discovery: ${etcd_discovery_url}
  locksmith:
    endpoint: "http://localhost:2379"
  units:
    - name: etcd2.service
      command: start
    - name: fleet.service
      command: start
  coreos:
  update:
    reboot-strategy: "etcd-lock"
manage_etc_hosts: "localhost"
