#!/bin/bash
consul kv put properties/avi/config/serviceenginegroup/name Default-Group
consul kv put properties/avi/config/serviceenginegroup/cloud_ref /api/cloud?name=Default-Cloud
consul kv put properties/avi/config/vcenter/folder ge
consul kv put properties/avi/config/serviceenginegroup/vcenter/cluster/ref /api/vimgrclusterruntime?name=MyCluster1
consul kv put properties/avi/config/serviceenginegroup/vcenter/cluster/include True
consul kv put properties/avi/config/serviceenginegroup/max_se 4
consul kv put properties/avi/config/serviceenginegroup/buffer_se 1
consul kv put properties/avi/config/serviceenginegroup/se_name_prefix hpe

consul kv put properties/avi/config/vcenter/mgmt_network "VM Network"
consul kv put properties/avi/config/network/cloud_ref
consul kv put properties/avi/config/network/update_method PUT
consul kv put properties/avi/config/network/vcenter_dvs false
consul kv put properties/avi/config/network/dhcp_enabled false

consul kv put properties/avi/config/network/configured_subnets/prefix/ip_addr/addr 192.168.38.0
consul kv put properties/avi/config/network/configured_subnets/prefix/ip_addr/type V4
consul kv put properties/avi/config/network/configured_subnets/prefix/mask 24

consul kv put properties/avi/config/network/configured_subnets/static_ranges/begin/addr 192.168.38.87
consul kv put properties/avi/config/network/configured_subnets/static_ranges/begin/type V4

consul kv put properties/avi/config/network/configured_subnets/static_ranges/end/addr 192.168.38.90
consul kv put properties/avi/config/network/configured_subnets/static_ranges/end/type V4

consul kv put properties/avi/config/cloud_discovery_wait 1

consul kv put properties/avi/config/cloud/name Default-Cloud
consul kv put properties/avi/config/cloud/vtype CLOUD_VCENTER
consul kv put properties/avi/config/cloud/dhcp_enabled false
consul kv put properties/avi/config/cloud/license_type LIC_CORES


consul kv put properties/avi/config/vcenter/datacenter DC1
consul kv put properties/avi/config/vcenter/dvs false
consul kv put properties/avi/config/vcenter/privilege WRITE_ACCESS
consul kv put properties/avi/config/vcenter/url 192.168.38.20
consul kv put properties/avi/config/vcenter/management_network "/api/vimgrnwruntime?name=VM Network"
consul kv put properties/avi/config/vcenter/management_ip_subnet/ip_addr/addr 192.168.38.0
consul kv put properties/avi/config/vcenter/management_ip_subnet/ip_addr/type V4
consul kv put properties/avi/config/vcenter/management_ip_subnet/mask 24
        
        

