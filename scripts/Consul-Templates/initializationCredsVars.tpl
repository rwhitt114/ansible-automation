avi_credentials:
  controller: {{ key "avi/controller/ip" }}
  username: '{{ key "avi/username" }}'
  password: '{{ key "avi/password" }}'
  api_version: {{ key "avi/credentials/api_version" }}
