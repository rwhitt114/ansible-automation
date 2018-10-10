avi_config:
  pool:
    - name: {{ key "properties/avi/config/pool/1/name" }}
      lb_algorithm: {{ key "properties/avi/config/pool/1/lb_algorithm" }}
      servers:
        - ip:
             addr: {{ key "properties/avi/config/pool/1/servers/ip/addr" }}
             type: '{{ key "properties/avi/config/pool/1/servers/ip/type" }}'
    - name: {{ key "properties/avi/config/pool/2/name" }}
      lb_algorithm: {{ key "properties/avi/config/pool/2/lb_algorithm" }}
      health_monitor_refs:
        - '{{ key "properties/avi/config/pool/2/health_monitor_refs/1" }}'
        - '{{ key "properties/avi/config/pool/2/health_monitor_refs/2" }}'
        - '{{ key "properties/avi/config/pool/2/health_monitor_refs/3" }}'

      servers:
        - ip:
             addr: {{ key "properties/avi/config/pool/2/servers/ip/addr" }}
             type: '{{ key "properties/avi/config/pool/2/servers/ip/type" }}'

  healthmonitor:
    - name: {{ key "properties/avi/config/healthmonitor/1/name" }}
      http_monitor:
        http_request: "{{ key "properties/avi/config/healthmonitor/1/http_monitor/http_request" }}"
        http_response_code:
          - {{ key "properties/avi/config/healthmonitor/1/http_monitor/http_response_code/1" }}
          - {{ key "properties/avi/config/healthmonitor/1/http_monitor/http_response_code/2" }}
      receive_timeout: {{ key "properties/avi/config/healthmonitor/1/receive_timeout" }}
      failed_checks: {{ key "properties/avi/config/healthmonitor/1/failed_checks" }}
      send_interval: {{ key "properties/avi/config/healthmonitor/1/send_interval" }}
      successful_checks: {{ key "properties/avi/config/healthmonitor/1/successful_checks" }}
      type: {{ key "properties/avi/config/healthmonitor/1/type" }}

    - name: {{ key "properties/avi/config/healthmonitor/2/name" }}
      receive_timeout: {{ key "properties/avi/config/healthmonitor/2/receive_timeout" }}
      failed_checks: {{ key "properties/avi/config/healthmonitor/2/failed_checks" }}
      monitor_port: {{ key "properties/avi/config/healthmonitor/2/monitor_port" }}
      send_interval: {{ key "properties/avi/config/healthmonitor/2/send_interval" }}
      successful_checks: {{ key "properties/avi/config/healthmonitor/2/successful_checks" }}
      type: {{ key "properties/avi/config/healthmonitor/2/type" }}
      tcp_monitor:
        tcp_half_open: {{ key "properties/avi/config/healthmonitor/2/tcp_monitor/tcp_half_open" }}
        tcp_response: "{{ key "properties/avi/config/healthmonitor/2/tcp_monitor/tcp_response" }}"
        tcp_request: "{{ key "properties/avi/config/healthmonitor/2/tcp_monitor/tcp_request" }}"

    - name: {{ key "properties/avi/config/healthmonitor/3/name" }}
      failed_checks: {{ key "properties/avi/config/healthmonitor/3/failed_checks" }}
      https_monitor:
        http_request: {{ key "properties/avi/config/healthmonitor/3/https_monitor/http_request" }}
          Connection: {{ key "properties/avi/config/healthmonitor/3/https_monitor/Connection" }}
        http_response_code:
        - {{ key "properties/avi/config/healthmonitor/3/https_monitor/http_response_code/1" }}
        - {{ key "properties/avi/config/healthmonitor/3/https_monitor/http_response_code/2" }}
      type: {{ key "properties/avi/config/healthmonitor/3/type" }}

  httppolicyset:
    - name: {{ key "properties/avi/config/httppolicyset/1/name" }}
      http_request_policy:
        rules:
          - index: {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/1/index" }}
            enable: {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/1/enable" }}
            name: "{{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/1/name" }}"
            match:
              path:
                match_case: {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/1/match/path/match_case" }}
                match_str:
                  - {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/1/match/path/match_str/1" }}
                match_criteria: {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/1/match/path/match_criteria" }}
            switching_action:
              action: {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/1/switching_action/action" }}
              status_code: {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/1/switching_action/status_code" }}
              pool_ref: "{{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/1/switching_action/pool_ref" }}"
          - index: {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/2/index" }}
            enable: {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/2/enable" }}
            name: "{{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/2/name" }}"
            match:
              path:
                match_case: {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/2/match/path/match_case" }}
                match_str:
                  - {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/2/match/path/match_str/1" }}
                match_criteria: {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/2/match/path/match_criteria" }}
            switching_action:
              action: {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/2/switching_action/action" }}
              status_code: {{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/2/switching_action/status_code" }}
              pool_ref: "{{ key "properties/avi/config/httppolicyset/1/http_request_policy/rules/2/switching_action/pool_ref" }}"
      is_internal_policy: {{ key "properties/avi/config/httppolicyset/1/is_internal_policy" }}

  virtualservice:
    - name: extensive
      services:
        - port: {{ key "properties/avi/config/virtualservice/services/port" }}
      pool_ref: '{{ key "properties/avi/config/virtualservice/pool_ref" }}'
      vip:
        - ip_address:
            addr: {{ key "properties/avi/config/virtualservice/vip/ip_address/addr" }}
            type: '{{ key "properties/avi/config/virtualservice/vip/ip_address/type" }}'
          vip_id: '{{ key "properties/avi/config/virtualservice/vip/vip_id" }}'
      cloud_ref: '{{ key "properties/avi/config/virtualservice/cloud_ref" }}'
      ssl_key_and_certificate_refs:
        - '{{ key "properties/avi/config/virtualservice/ssl_key_and_certificate_refs" }}'
      ssl_profile_ref: '{{ key "properties/avi/config/virtualservice/ssl_profile_ref" }}'
      application_profile_ref: '{{ key "properties/avi/config/virtualservice/application_profile_ref" }}'
      services:
        - port: {{ key "properties/avi/config/virtualservice/services/ports/1/port" }}
        - port: {{ key "properties/avi/config/virtualservice/services/ports/2/port" }}
          enable_ssl: {{ key "properties/avi/config/virtualservice/services/ports/2/enable_ssl" }}
      http_policies:
        - index: {{ key "properties/avi/config/virtualservice/services/http_policies/1/index" }}
          http_policy_set_ref: '{{ key "properties/avi/config/virtualservice/services/http_policies/http_policy_set_ref" }}'

  sslkeyandcertificate:
    - name: {{ key "properties/avi/config/sslkeyandcertificate/1/name" }}
      key: {{ printf "{{ lookup('file', '{{ playbook_dir }}/../../config/ssl/ext-cert.key') }}" }}
      certificate:
        self_signed: {{ key "properties/avi/config/sslkeyandcertificate/1/certificate/self_signed" }}
        certificate: {{ printf "{{ lookup('file', '{{ playbook_dir }}/../../config/ssl/ext-cert.crt')}}" }}
      type: {{ key "properties/avi/config/sslkeyandcertificate/1/certificate/type" }}

