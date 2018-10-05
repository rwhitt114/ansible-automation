---
# vars file for deployement
ovftool_path: {{ key "avi/ovftool_path" }}


datacenter: {{ key "avi/datacenter" }}
cluster: {{ key "avi/cluster" }}
mgmt_network: {{ key "avi/mgmt_network" }}
ova_path: {{ key "avi/ova_path" }}
power_on: {{ key "avi/power_on" }}
vcenter_folder: {{ key "avi/vcenter_folder" }}
number_of_cpus: {{ key "avi/number_of_cpus" }}
memory: {{ key "avi/memory" }}
controllers:
  - name: {{ key "avi/controller1_name" }}
    mgmt_ip: {{ key "avi/controller1_mgmt_ip" }}
    mgmt_mask: {{ key "avi/controller1_mgmt_mask" }}
    default_gw: {{ key "avi/controller1_default_gw" }}
  - name: {{ key "avi/controller2_name" }}
    mgmt_ip: {{ key "avi/controller2_mgmt_ip" }}
    mgmt_mask: {{ key "avi/controller2_mgmt_mask" }}
    default_gw: {{ key "avi/controller2_default_gw" }}
  - name: {{ key "avi/controller3_name" }}
    mgmt_ip: {{ key "avi/controller3_mgmt_ip" }}
    mgmt_mask: {{ key "avi/controller3_mgmt_mask" }}
    default_gw: {{ key "avi/controller3_default_gw" }}
