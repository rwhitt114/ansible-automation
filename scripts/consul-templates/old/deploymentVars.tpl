---
# vars file for deployement
ovftool_path: {{ key "avi/ovftool_path" }}
vcenter_user: '{{ key "avi/vcenter/user" }}'
vcenter_password: '{{ key "avi/vcenter/password" }}'
vcenter_folder: {{ key "avi/vcenter/folder" }}
datacenter: {{ key "avi/vcenter/datacenter" }}
cluster: {{ key "avi/vcenter/cluster" }}
mgmt_network: {{ key "avi/vcenter/mgmt_network" }}
ova_path: {{ key "avi/vcenter/ova_path" }}
power_on: {{ key "avi/vcenter/power_on" }}
number_of_cpus: {{ key "avi/vcenter/number_of_cpus" }}
memory: {{ key "avi/vcenter/memory" }}
controllers:
  - name: {{ key "avi/controllers/1/name" }}
    vcenter_host: {{ key "avi/controllers/1/vcenter/host" }}
    mgmt_ip: {{ key "avi/controllers/1/mgmt_ip" }}
    mgmt_mask: {{ key "avi/controllers/1/mgmt_mask" }}
    default_gw: {{ key "avi/controllers/1/default_gw" }}
  - name: {{ key "avi/controllers/2/name" }}
    vcenter_host: {{ key "avi/controllers/2/vcenter/host" }}
    mgmt_ip: {{ key "avi/controllers/2/mgmt_ip" }}
    mgmt_mask: {{ key "avi/controllers/2/mgmt_mask" }}
    default_gw: {{ key "avi/controllers/2/default_gw" }}
  - name: {{ key "avi/controllers/3/name" }}
    vcenter_host: {{ key "avi/controllers/3/vcenter/host" }}
    mgmt_ip: {{ key "avi/controllers/3/mgmt_ip" }}
    mgmt_mask: {{ key "avi/controllers/3/mgmt_mask" }}
    default_gw: {{ key "avi/controllers/3/default_gw" }}
