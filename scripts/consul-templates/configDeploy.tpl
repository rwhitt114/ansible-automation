---
ovftool_path: {{ key "properties/avi/config/ovftool_path" }}
datacenter: {{ key "properties/avi/config/vcenter/datacenter" }}
cluster: {{ key "properties/avi/config/vcenter/cluster" }}
mgmt_network: {{ key "properties/avi/config/vcenter/mgmt_network" }}
ova_path: {{ key "properties/avi/config/vcenter/ova_path" }}
power_on: {{ key "properties/avi/config/vcenter/power_on" }}
vcenter_folder: {{ key "properties/avi/config/serviceenginegroup/vcenter/folder" }}
number_of_cpus: {{ key "properties/avi/config/vcenter/number_of_cpus" }}
memory: {{ key "properties/avi/config/vcenter/memory" }}
controllers:
  - name: {{ key "properties/avi/config/controllers/1/name" }}
    vcenter_host: {{ key "properties/avi/config/controllers/1/vcenter/host" }}
    mgmt_ip: {{ key "properties/avi/config/controllers/1/mgmt_ip" }}
    mgmt_mask: {{ key "properties/avi/config/controllers/1/mgmt_mask" }}
    default_gw: {{ key "properties/avi/config/controllers/1/default_gw" }}
  #- name: {{ key "properties/avi/config/controllers/2/name" }}
  #  vcenter_host: {{ key "properties/avi/config/controllers/2/vcenter/host" }}
  #  mgmt_ip: {{ key "properties/avi/config/controllers/2/mgmt_ip" }}
  #  mgmt_mask: {{ key "properties/avi/config/controllers/2/mgmt_mask" }}
  #  default_gw: {{ key "properties/avi/config/controllers/2/default_gw" }}
  #- name: {{ key "properties/avi/config/controllers/3/name" }}
  #  vcenter_host: {{ key "properties/avi/config/controllers/3/vcenter/host" }}
  #  mgmt_ip: {{ key "properties/avi/config/controllers/3/mgmt_ip" }}
  #  mgmt_mask: {{ key "properties/avi/config/controllers/3/mgmt_mask" }}
  #  default_gw: {{ key "properties/avi/config/controllers/3/default_gw" }}
