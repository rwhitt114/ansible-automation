avi_config:
  serviceenginegroup:
    - name: {{ key "properties/avi/config/serviceenginegroup/name" }}
      cloud_ref: '{{ key "properties/avi/config/serviceenginegroup/cloud_ref" }}'
      vcenter_folder: {{ key "properties/avi/config/serviceenginegroup/vcenter/folder" }}
      vcenter_clusters:
        cluster_refs:
          - '{{ key "properties/avi/config/serviceenginegroup/vcenter/cluster/ref" }}'
        include: {{ key "properties/avi/config/serviceenginegroup/vcenter/cluster/include" }}
      max_se: {{ key "properties/avi/config/serviceenginegroup/max_se" }}
      buffer_se: {{ key "properties/avi/config/serviceenginegroup/buffer_se" }}
      se_name_prefix: {{ key "properties/avi/config/serviceenginegroup/se_name_prefix" }}

  network:
    - name: "{{ key "properties/avi/config/network/name" }}"
      #cloud_ref: {{ key "properties/avi/config/network/cloud_ref" }}
      avi_api_update_method: {{ key "properties/avi/config/network/update_method" }}
      vcenter_dvs: {{ key "properties/avi/config/network/vcenter_dvs" }}
      dhcp_enabled: {{ key "properties/avi/config/network/dhcp_enabled" }}
      configured_subnets:
        - prefix:
            ip_addr:
              addr: {{ key "properties/avi/config/network/configured_subnets/prefix/ip_addr/addr" }}
              type: '{{ key "properties/avi/config/network/configured_subnets/prefix/ip_addr/type" }}'
            mask: {{ key "properties/avi/config/network/configured_subnets/prefix/mask" }}
          static_ranges:
          - begin:
              addr: {{ key "properties/avi/config/network/configured_subnets/static_ranges/begin/addr" }}
              type: '{{ key "properties/avi/config/network/configured_subnets/static_ranges/begin/type" }}'
            end:
              addr: {{ key "properties/avi/config/network/configured_subnets/static_ranges/end/addr" }}
              type: '{{ key "properties/avi/config/network/configured_subnets/static_ranges/end/type" }}'

  avi_cloud_discovery_wait: {{ key "properties/avi/config/cloud_discovery_wait" }}
  cloud:
    - name: {{ key "properties/avi/config/cloud/name"}}
      vtype: {{ key "properties/avi/config/cloud/vtype" }}
      dhcp_enabled: {{ key "properties/avi/config/cloud/dhcp_enabled" }}
      license_type: '{{ key "properties/avi/config/cloud/license_type" }}'
      vcenter_configuration:
        username: '{{ key "properties/avi/creds/vcenter/user" }}'
        password: '{{ key "properties/avi/creds/vcenter/password" }}'
        datacenter: '{{ key "properties/avi/config/vcenter/datacenter" }}'
        vcenter_dvs: {{ key "properties/avi/config/vcenter/dvs" }}
        privilege: '{{ key "properties/avi/config/vcenter/privilege" }}'
        vcenter_url: '{{ key "properties/avi/config/vcenter/url" }}'
        management_network: "{{ key "properties/avi/config/vcenter/mgmt_network" }}"
        management_ip_subnet:
          ip_addr: 
            addr: {{ key "properties/avi/config/vcenter/management_ip_subnet/ip_addr/addr" }}
            type: {{ key "properties/avi/config/vcenter/management_ip_subnet/ip_addr/type" }}
          mask: {{ key "properties/avi/config/vcenter/management_ip_subnet/mask" }}
        
        

