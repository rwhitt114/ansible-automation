consul kv put avi/cloud_discovery_wait 450
consul kv put avi/cloud/name Default-Cloud
consul kv put avi/cloud/vtype CLOUD_VCENTER
consul kv put avi/cloud/dhcp_enabled true
consul kv put avi/cloud/license_type "LIC_CORES"
consul kv put avi/vcenter/user 'administrator@mitchchen.com'
consul kv put avi/vcenter/password 'h6j5?HxL3zlSO$'
consul kv put avi/vcenter/datacenter DC1
consul kv put avi/vcenter/mgmt_network 'VM Network'
consul kv put avi/vcenter/privilege "WRITE_ACCESS"
consul kv put avi/vcenter/url 192.168.38.20

consul kv put avi/serviceenginegroup/name Default-Group
consul kv put avi/serviceenginegroup/cloud_ref '/api/cloud?name=Default-Cloud'
consul kv put avi/serviceenginegroup/vcenter/folder ge
consul kv put avi/serviceenginegroup/vcenter/cluser/ref '/api/vimgrclusterruntime?name=Arista'
consul kv put avi/serviceenginegroup/include True
consul kv put avi/serviceenginegroup/max_se 4
consul kv put avi/serviceenginegroup/buffer_se 1
consul kv put avi/serviceenginegroup/se_name_prefix grastogi

consul kv put avi/systemconfiguration/email/smtp_type SMTP_LOCAL_HOST
consul kv put avi/systemconfiguration/email/from_email admin@avicontroller.net

consul kv put avi/systemconfiguration/global_tenant_config/se_in_provider_context true
consul kv put avi/systemconfiguration/global_tenant_config/tenant_access_to_provider_se true
consul kv put avi/systemconfiguration/global_tenant_configtenant_vrf false

consul kv put avi/systemconfiguration/ntp_servers/1/type DNS
consul kv put avi/systemconfiguration/ntp_servers/1/addr 0.us.pool.ntp.org
consul kv put avi/systemconfiguration/ntp_servers/2/type DNS
consul kv put avi/systemconfiguration/ntp_servers/2/addr 0.us.pool.ntp.org
consul kv put avi/systemconfiguration/ntp_servers/3/type DNS
consul kv put avi/systemconfiguration/ntp_servers/3/addr 0.us.pool.ntp.org
consul kv put avi/systemconfiguration/ntp_servers/4/type DNS
consul kv put avi/systemconfiguration/ntp_servers/4/addr 0.us.pool.ntp.org
     
consul kv put avi/systemconfiguration/portal_configuration/allow_basic_authentication false
consul kv put avi/systemconfiguration/portal_configuration/disable_remote_cli_shell false
consul kv put avi/systemconfiguration/portal_configurationenable_clickjacking_protection true
consul kv put avi/systemconfiguration/portal_configurationenable_http true
consul kv put avi/systemconfiguration/portal_configurationenable_https true
consul kv put avi/systemconfiguration/portal_configurationpassword_strength_check false
consul kv put avi/systemconfiguration/portal_configurationredirect_to_https true
consul kv put avi/systemconfiguration/portal_configuration/sslkeyandcertificate_refs/1 "/api/sslkeyandcertificate?name=System-Default-Portal-Cert"
consul kv put avi/systemconfiguration/portal_configuration/sslkeyandcertificate_refs/2 "/api/sslkeyandcertificate?name=System-Default-Portal-Cert-EC256"
consul kv put avi/systemconfiguration/portal_configuration/sslprofile_ref "/api/sslprofile?name=System-Standard-Portal"
consul kv put avi/systemconfiguration/portal_configuration/use_uuid_from_input false

