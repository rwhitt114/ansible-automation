avi_credentials:
  controller: {{ key "avi/creds/controller/ip" }}
  username: '{{ key "avi/creds/username" }}'
  password: '{{ key "avi/creds/password" }}'
  api_version: {{ key "avi/creds/api_version" }}

vcenter:  
  username: {{ key "avi/creds/vcenter/user" }}
  password: {{ key "avi/creds/vcenter/password" }}
  
