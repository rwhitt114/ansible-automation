avi_credentials:
  controller: {{ key "avi/creds/controller/ip" }}
  username: '{{ key "avi/creds/controller/username" }}'
  password: '{{ key "avi/creds/controller/password" }}'
  api_version: {{ key "avi/creds/controller/api_version" }}

vcenter:  
  username: {{ key "avi/creds/vcenter/user" }}
  password: {{ key "avi/creds/vcenter/password" }}
  
