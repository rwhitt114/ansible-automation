avi_config:
  avi_cloud_discovery_wait: {{ key "avi/cloud_discovery_wait" }}
  cloud:
    - name: {{ key "consul kv put avi/cloud/name"}}
      vtype: {{ key "consul kv put avi/cloud/vtype" }}
      dhcp_enabled: {{ key "avi/cloud/dhcp_enabled" }}
      license_type: {{ key "avi/cloud/license_type" }}
      vcenter_configuration:
        username: {{ key "avi/vcenter/user" }}
        password: {{ key "avi/vcenter/password" }}
        datacenter: {{ key "avi/vcenter/datacenter" }}
        management_network: {{ key "avi/vcenter/mgmt_network" }}
        privilege: {{ key "avi/vcenter/privilege" }}
        vcenter_url: {{ key "avi/vcenter/url" }}

  serviceenginegroup:
    - name: {{ key "avi/serviceenginegroup/name Default-Group" }}
      cloud_ref: {{ key "avi/serviceenginegroup/cloud_ref" }}
      vcenter_folder: {{ key "avi/serviceenginegroup/vcenter/folder" }}
      vcenter_clusters:
        cluster_refs:
          - {{ key "avi/serviceenginegroup/vcenter/cluser/ref" }}
        include: {{ key "avi/serviceenginegroup/include" }}
      max_se: {{ key "avi/serviceenginegroup/max_se" }}
      buffer_se: {{ key "avi/serviceenginegroup/buffer_se" }}
      se_name_prefix: {{ key "avi/serviceenginegroup/se_name_prefix" }}


  systemconfiguration:
    - email_configuration:
        smtp_type: {{ key "avi/systemconfiguration/email/smtp_type" }}
        from_email: {{ key "avi/systemconfiguration/email/from_email" }}
      global_tenant_config:
        se_in_provider_context: {{ key "avi/systemconfiguration/global_tenant_config/se_in_provider_context" }}
        tenant_access_to_provider_se: {{ key "avi/systemconfiguration/global_tenant_config/tenant_access_to_provider_se" }}
        tenant_vrf: {{ key "avi/systemconfiguration/global_tenant_configtenant_vrf" }}
      ntp_servers:
        - server:
            type: {{ key "avi/systemconfiguration/ntp_servers/1/type" }}
            addr: {{ key "avi/systemconfiguration/ntp_servers/1/addr" }}
        - server:
            type: {{ key "avi/systemconfiguration/ntp_servers/2/type" }}
            addr: {{ key "avi/systemconfiguration/ntp_servers/2/addr" }}
        - server:
            type: {{ key "avi/systemconfiguration/ntp_servers/3/type" }}
            addr: {{ key "avi/systemconfiguration/ntp_servers/3/addr" }}
        - server:
            type: {{ key "avi/systemconfiguration/ntp_servers/4/type" }}
            addr: {{ key "avi/systemconfiguration/ntp_servers/4/addr" }}
      portal_configuration:
        allow_basic_authentication: {{ key "avi/systemconfiguration/portal_configuration/allow_basic_authentication" }}
        disable_remote_cli_shell: {{ key "avi/systemconfiguration/portal_configuration/disable_remote_cli_shell" }}
        enable_clickjacking_protection: {{ key "avi/systemconfiguration/portal_configurationenable_clickjacking_protection" }}
        enable_http: {{ key "avi/systemconfiguration/portal_configurationenable_http" }}
        enable_https: {{ key "avi/systemconfiguration/portal_configurationenable_https" }}
        password_strength_check: {{ key "avi/systemconfiguration/portal_configurationpassword_strength_check" }}
        redirect_to_https: {{ key "avi/systemconfiguration/portal_configurationredirect_to_https" }}
        sslkeyandcertificate_refs:
          - "{{ key "avi/systemconfiguration/portal_configuration/sslkeyandcertificate_refs/1" }}"
          - "{{ key "avi/systemconfiguration/portal_configuration/sslkeyandcertificate_refs/2" }}"
        sslprofile_ref: {{ key "avi/systemconfiguration/portal_configuration/sslprofile_ref" }}
        use_uuid_from_input: {{ key "avi/systemconfiguration/portal_configuration/use_uuid_from_input" }}

