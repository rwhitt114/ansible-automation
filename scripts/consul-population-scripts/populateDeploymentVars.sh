#!/bin/bash
consul kv put avi/ovftool_path /usr/lib/vmware-ovftool
consul kv put avi/vcenter/user 'administrator@mitchchen.com'
consul kv put avi/vcenter/password 'h6j5?HxL3zlSO$'
consul kv put avi/vcenter/folder ge
consul kv put avi/vcenter/datacenter DC1
consul kv put avi/vcenter/cluster MyCluster1
consul kv put avi/vcenter/mgmt_network 'VM Network'
consul kv put avi/vcenter/ova_path /home/ge/controller-17.2.13-9168.ova
consul kv put avi/vcenter/power_on true
consul kv put avi/vcenter/number_of_cpus 8
consul kv put avi/vcenter/memory 24

consul kv put avi/controllers/1/name AviController1
consul kv put avi/controllers/1/vcenter/host 192.168.38.20
consul kv put avi/controllers/1/mgmt_ip 192.168.38.71
consul kv put avi/controllers/1/mgmt_mask 255.255.255.0
consul kv put avi/controllers/1/default_gw 192.168.38.1

consul kv put avi/controllers/2/name AviController2
consul kv put avi/controllers/2/vcenter/host 192.168.38.20
consul kv put avi/controllers/2/mgmt_ip 192.168.38.72
consul kv put avi/controllers/2/mgmt_mask 255.255.255.0
consul kv put avi/controllers/2/default_gw 192.168.38.1

consul kv put avi/controllers/3/name AviController3
consul kv put avi/controllers/3/vcenter/host 192.168.38.20
consul kv put avi/controllers/3/mgmt_ip 192.168.38.73
consul kv put avi/controllers/3/mgmt_mask 255.255.255.0
consul kv put avi/controllers/3/default_gw 192.168.38.1
