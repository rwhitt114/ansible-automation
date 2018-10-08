#!/bin/bash
consul kv put avi/serviceenginegroup/name Default-Group
consul kv put avi/serviceenginegroup/cloud_ref /api/cloud?name=Default-Cloud
consul kv put avi/serviceenginegroup/vcenter/folder ge
consul kv put avi/serviceenginegroup/vcenter/cluster/ref /api/vimgrclusterruntime?name=MyCluster1
consul kv put avi/serviceenginegroup/vcenter/cluster/include True
consul kv put avi/serviceenginegroup/max_se 4
consul kv put avi/serviceenginegroup/buffer_se 1
consul kv put avi/serviceenginegroup/se_name_prefix hpe

consul kv put avi/network/name "VM Network"
#consul kv put avi/network/cloud_ref
consul kv put avi/network/update_method PUT
consul kv put avi/network/vcenter_dvs false
consul kv put avi/network/dhcp_enabled false

consul kv put avi/network/configured_subnets/prefix/ip_addr/addr 192.168.38.0
consul kv put avi/network/configured_subnets/prefix/ip_addr/type V4
consul kv put avi/network/configured_subnets/prefix/mask 24

consul kv put avi/network/configured_subnets/static_ranges/begin/addr 192.168.38.87
consul kv put avi/network/configured_subnets/static_ranges/begin/type V4

consul kv put avi/network/configured_subnets/static_ranges/end/addr 192.168.38.90
consul kv put avi/network/configured_subnets/static_ranges/end/type V4

consul kv put avi/cloud_discovery_wait 1

consul kv put avi/cloud/name Default-Cloud
consul kv put avi/cloud/vtype CLOUD_VCENTER
consul kv put avi/cloud/dhcp_enabled false
consul kv put avi/cloud/license_type LIC_CORES
consul kv put avi/vcenter/user administrator@mitchchen.com
consul kv put avi/vcenter/password h6j5?HxL3zlSO$
consul kv put avi/vcenter/datacenter DC1
consul kv put avi/vcenter/dvs false
consul kv put avi/vcenter/privilege WRITE_ACCESS
consul kv put avi/vcenter/url 192.168.38.20
consul kv put avi/vcenter/mgmt_network /api/vimgrnwruntime?name=VM Network
consul kv put avi/vcenter/management_ip_subnet/ip_addr/addr 192.168.38.0
consul kv put avi/vcenter/management_ip_subnet/ip_addr/type V4
consul kv put avi/vcenter/management_ip_subnet/mask 24
        
        

