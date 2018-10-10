#!/bin/bash
consul kv put properties/avi/config/ovftool_path /usr/lib/vmware-ovftool
consul kv put properties/avi/config/vcenter/datacenter DC1
consul kv put properties/avi/config/vcenter/cluster MyCluster1
consul kv put properties/avi/config/vcenter/mgmt_network "VM Network"
consul kv put properties/avi/config/vcenter/ova_path /home/ge/controller-17.2.13-9168.ova
consul kv put properties/avi/config/vcenter/power_on true
consul kv put properties/avi/config/vcenter/folder ge
consul kv put properties/avi/config/vcenter/number_of_cpus 8
consul kv put properties/avi/config/vcenter/memory 24
consul kv put properties/avi/config/controllers/1/name AviController1
consul kv put properties/avi/config/controllers/1/vcenter/host 192.168.38.20
consul kv put properties/avi/config/controllers/1/mgmt_ip 192.168.38.71
consul kv put properties/avi/config/controllers/1/mgmt_mask 255.255.255.0
consul kv put properties/avi/config/controllers/1/default_gw 192.168.38.1
consul kv put properties/avi/config/controllers/2/name 
consul kv put properties/avi/config/controllers/2/vcenter/host 
consul kv put properties/avi/config/controllers/2/mgmt_ip 
consul kv put properties/avi/config/controllers/2/mgmt_mask 
consul kv put properties/avi/config/controllers/2/default_gw 
consul kv put properties/avi/config/controllers/3/name 
consul kv put properties/avi/config/controllers/3/vcenter/host 
consul kv put properties/avi/config/controllers/3/mgmt_ip 
consul kv put properties/avi/config/controllers/3/mgmt_mask 
consul kv put properties/avi/config/controllers/3/default_gw 
