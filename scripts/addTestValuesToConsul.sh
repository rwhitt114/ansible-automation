#!/bin/bash
consul kv put avi/ovftool_path /usr/lib/vmware-ovftool
consul kv put avi/vcenter_host 192.168.38.20
consul kv put avi/vcenter_user 'administrator@mitchchen.com'
consul kv put avi/vcenter_password 'h6j5?HxL3zlSO$'
consul kv put avi/datacenter DC1
consul kv put avi/cluster MyCluster1
consul kv put avi/mgmt_network 'VM Network'
consul kv put avi/ova_path /home/ge/controller-17.2.13-9168.ova
consul kv put avi/power_on true
consul kv put avi/vcenter_folder ge
consul kv put avi/number_of_cpus 8
consul kv put avi/memory 24
consul kv put avi/controller1_name AviController1
consul kv put avi/controller1_mgmt_ip 192.168.38.71
consul kv put avi/controller1_mgmt_mask 255.255.255.0
consul kv put avi/controller1_default_gw 192.168.38.1
consul kv put avi/controller2_name AviController2
consul kv put avi/controller2_mgmt_ip 192.168.38.72
consul kv put avi/controller2_mgmt_mask 255.255.255.0
consul kv put avi/controller2_default_gw 192.168.38.1
consul kv put avi/controller3_name AviController3
consul kv put avi/controller3_mgmt_ip 192.168.38.73
consul kv put avi/controller3_mgmt_mask 255.255.255.0
consul kv put avi/controller3_default_gw 192.168.38.1
