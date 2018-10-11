avi_config:
  avi_cloud_discovery_wait: {{ key "properties/avi/config/cloud_discovery_wait" }}
  cloud:
    - name: {{ key "properties/avi/config/cloud/name"}}
      vtype: {{ key "properties/avi/config/cloud/vtype" }}
      dhcp_enabled: {{ key "properties/avi/config/cloud/dhcp_enabled" }}
      license_type: "{{ key "properties/avi/config/cloud/license_type" }}"
      vcenter_configuration:
        username: {{ printf "'{{ vcenter.username }}'" }}
        password: {{ printf "'{{ vcenter.password }}'" }}
        datacenter: '{{ key "properties/avi/config/vcenter/datacenter" }}'
        vcenter_dvs: {{ key "properties/avi/config/vcenter/dvs" }}
        privilege: '{{ key "properties/avi/config/vcenter/privilege" }}'
        vcenter_url: '{{ key "properties/avi/config/vcenter/url" }}'

  systemconfiguration:
    - email_configuration:
        smtp_type: {{ key "properties/avi/config/systemconfiguration/email/smtp_type" }}
        from_email: {{ key "properties/avi/config/systemconfiguration/email/from_email" }}
      global_tenant_config:
        se_in_provider_context: {{ key "properties/avi/config/systemconfiguration/global_tenant_config/se_in_provider_context" }}
        tenant_access_to_provider_se: {{ key "properties/avi/config/systemconfiguration/global_tenant_config/tenant_access_to_provider_se" }}
        tenant_vrf: {{ key "properties/avi/config/systemconfiguration/global_tenant_configtenant_vrf" }}
      ntp_servers:
        - server:
            type: {{ key "properties/avi/config/systemconfiguration/ntp_servers/1/type" }}
            addr: {{ key "properties/avi/config/systemconfiguration/ntp_servers/1/addr" }}
        - server:
            type: {{ key "properties/avi/config/systemconfiguration/ntp_servers/2/type" }}
            addr: {{ key "properties/avi/config/systemconfiguration/ntp_servers/2/addr" }}
        - server:
            type: {{ key "properties/avi/config/systemconfiguration/ntp_servers/3/type" }}
            addr: {{ key "properties/avi/config/systemconfiguration/ntp_servers/3/addr" }}
        - server:
            type: {{ key "properties/avi/config/systemconfiguration/ntp_servers/4/type" }}
            addr: {{ key "properties/avi/config/systemconfiguration/ntp_servers/4/addr" }}
      portal_configuration:
        allow_basic_authentication: {{ key "properties/avi/config/systemconfiguration/portal_configuration/allow_basic_authentication" }}
        disable_remote_cli_shell: {{ key "properties/avi/config/systemconfiguration/portal_configuration/disable_remote_cli_shell" }}
        enable_clickjacking_protection: {{ key "properties/avi/config/systemconfiguration/portal_configurationenable_clickjacking_protection" }}
        enable_http: {{ key "properties/avi/config/systemconfiguration/portal_configurationenable_http" }}
        enable_https: {{ key "properties/avi/config/systemconfiguration/portal_configurationenable_https" }}
        password_strength_check: {{ key "properties/avi/config/systemconfiguration/portal_configurationpassword_strength_check" }}
        redirect_to_https: {{ key "properties/avi/config/systemconfiguration/portal_configurationredirect_to_https" }}
        sslkeyandcertificate_refs:
          - '{{ key "properties/avi/config/systemconfiguration/portal_configuration/sslkeyandcertificate_refs/1" }}'
          - '{{ key "properties/avi/config/systemconfiguration/portal_configuration/sslkeyandcertificate_refs/2" }}'
        sslprofile_ref: {{ key "properties/avi/config/systemconfiguration/portal_configuration/sslprofile_ref" }}
        use_uuid_from_input: {{ key "properties/avi/config/systemconfiguration/portal_configuration/use_uuid_from_input" }}

  cluster:
    - avi_api_update_method: {{ key "properties/avi/config/cluster/avi_api_update_method" }}
      tenant: {{ key "properties/avi/config/cluster/tenant" }}
      name: {{ key "properties/avi/config/cluster/name" }}
      virtual_ip:
        type: {{ key "properties/avi/config/cluster/virtual_ip/type" }}
        addr: {{ key "properties/avi/config/cluster/virtual_ip/addr" }}
      nodes:
         - ip:
             type: {{ key "properties/avi/config/cluster/nodes/1/ip/type" }}
             addr: {{ key "properties/avi/config/cluster/nodes/1/ip/addr" }}
           name: {{ key "properties/avi/config/cluster/nodes/1/name" }}



