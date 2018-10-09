avi_config:
  serviceenginegroup:
    - name: {{ key "avi/serviceenginegroup/name" }}
      cloud_ref: '{{ key "avi/serviceenginegroup/cloud_ref" }}'
      vcenter_folder: {{ key "avi/serviceenginegroup/vcenter/folder" }}
      vcenter_clusters:
        cluster_refs:
          - '{{ key "avi/serviceenginegroup/vcenter/cluster/ref" }}'
        include: {{ key "avi/serviceenginegroup/vcenter/cluster/include" }}
      max_se: {{ key "avi/serviceenginegroup/max_se" }}
      buffer_se: {{ key "avi/serviceenginegroup/buffer_se" }}
      se_name_prefix: {{ key "avi/serviceenginegroup/se_name_prefix" }}

  network:
    - name: "{{ key "avi/network/name" }}"
      #cloud_ref: {{ key "avi/network/cloud_ref" }}
      avi_api_update_method: {{ key "avi/network/update_method" }}
      vcenter_dvs: {{ key "avi/network/vcenter_dvs" }}
      dhcp_enabled: {{ key "avi/network/dhcp_enabled" }}
      configured_subnets:
        - prefix:
            ip_addr:
              addr: {{ key "avi/network/configured_subnets/prefix/ip_addr/addr" }}
              type: '{{ key "avi/network/configured_subnets/prefix/ip_addr/type" }}'
            mask: {{ key "avi/network/configured_subnets/prefix/mask" }}
          static_ranges:
          - begin:
              addr: {{ key "avi/network/configured_subnets/static_ranges/begin/addr" }}
              type: '{{ key "avi/network/configured_subnets/static_ranges/begin/type" }}'
            end:
              addr: {{ key "avi/network/configured_subnets/static_ranges/end/addr" }}
              type: '{{ key "avi/network/configured_subnets/static_ranges/end/type" }}'

  avi_cloud_discovery_wait: {{ key "avi/cloud_discovery_wait" }}
  cloud:
    - name: {{ key "avi/cloud/name"}}
      vtype: {{ key "avi/cloud/vtype" }}
      dhcp_enabled: {{ key "avi/cloud/dhcp_enabled" }}
      license_type: '{{ key "avi/cloud/license_type" }}'
      vcenter_configuration:
        username: '{{ key "avi/vcenter/user" }}'
        password: '{{ key "avi/vcenter/password" }}'
        datacenter: '{{ key "avi/vcenter/datacenter" }}'
        vcenter_dvs: {{ key "avi/vcenter/dvs" }}
        privilege: '{{ key "avi/vcenter/privilege" }}'
        vcenter_url: '{{ key "avi/vcenter/url" }}'
        management_network: "{{ key "avi/vcenter/mgmt_network" }}"
        management_ip_subnet:
          ip_addr: 
            addr: {{ key "avi/vcenter/management_ip_subnet/ip_addr/addr" }}
            type: {{ key "avi/vcenter/management_ip_subnet/ip_addr/type" }}
          mask: {{ key "avi/vcenter/management_ip_subnet/mask" }}
        
        

