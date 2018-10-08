consul kv put avi/config/pool/1/name ext-pool-A
consul kv put avi/config/pool/1/lb_algorithm LB_ALGORITHM_ROUND_ROBIN
consul kv put avi/config/pool/1/servers/ip/addr 192.168.38.3
consul kv put avi/config/pool/1/servers/ip/type V4
consul kv put avi/config/pool/2/name ext-pool-B
consul kv put avi/config/pool/2/lb_algorithm LB_ALGORITHM_LEAST_CONNECTIONS
consul kv put avi/config/pool/2/health_monitor_refs/1 /api/healthmonitor?name=ext-hm
consul kv put avi/config/pool/2/health_monitor_refs/2 /api/healthmonitor?name=ext_multiline_hm
consul kv put avi/config/pool/2/health_monitor_refs/3 /api/healthmonitor?name=ext-hm-tcp-ecv
consul kv put avi/config/pool/2/servers/ip/addr 192.168.38.1
consul kv put avi/config/pool/2/servers/ip/type V4
consul kv put avi/config/healthmonitor/1/name ext-hm
consul kv put avi/config/healthmonitor/1/http_monitor/http_request "HEAD / HTTP/1.0"
consul kv put avi/config/healthmonitor/1/http_monitor/http_response_code/1 HTTP_2XX
consul kv put avi/config/healthmonitor/1/http_monitor/http_response_code/2 HTTP_3XX
consul kv put avi/config/healthmonitor/1/receive_timeout 4
consul kv put avi/config/healthmonitor/1/failed_checks 3
consul kv put avi/config/healthmonitor/1/send_interval 10
consul kv put avi/config/healthmonitor/1/successful_checks 3
consul kv put avi/config/healthmonitor/1/type HEALTH_MONITOR_HTTP

consul kv put avi/config/healthmonitor/2/name ext-hm-tcp-ecv
consul kv put avi/config/healthmonitor/2/receive_timeout 4
consul kv put avi/config/healthmonitor/2/failed_checks 2
consul kv put avi/config/healthmonitor/2/monitor_port 22222
consul kv put avi/config/healthmonitor/2/send_interval 10
consul kv put avi/config/healthmonitor/2/successful_checks 2
consul kv put avi/config/healthmonitor/2/type HEALTH_MONITOR_TCP
consul kv put avi/config/healthmonitor/2/tcp_monitor/tcp_half_open false
consul kv put avi/config/healthmonitor/2/tcp_monitor/tcp_response "ECV Control: In"
consul kv put avi/config/healthmonitor/2/tcp_monitor/tcp_request "GET / \r\n HTTP/1.0\r\n\r\n"
consul kv put avi/config/healthmonitor/3/name ext_multiline_hm
consul kv put avi/config/healthmonitor/3/failed_checks 1
consul kv put avi/config/healthmonitor/3/https_monitor/http_request "|- \r\n GET /index.html HTTP/1.0"
consul kv put avi/config/healthmonitor/3/https_monitor/Connection Close
consul kv put avi/config/healthmonitor/3/https_monitor/http_response_code/1 HTTP_2XX
consul kv put avi/config/healthmonitor/3/https_monitor/http_response_code/2 HTTP_3XX
consul kv put avi/config/healthmonitor/3/type HEALTH_MONITOR_HTTP

consul kv put avi/config/httppolicyset/1/name ext-httppolicy

consul kv put avi/config/httppolicyset/1/http_request_policy/rules/1/index 1
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/1/enable true
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/1/name ext-pool-A
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/1/match/path/match_case INSENSITIVE
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/1/match/path/match_str/1 "/foo"
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/1/match/path/match_criteria EQUALS
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/1/switching_action/action HTTP_SWITCHING_SELECT_POOL
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/1/switching_action/status_code HTTP_LOCAL_RESPONSE_STATUS_CODE_200
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/1/switching_action/pool_ref "/api/pool?name=ext-pool-A"

consul kv put avi/config/httppolicyset/1/http_request_policy/rules/2/index 2
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/2/enable true
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/2/name ext-pool-B
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/2/match/path/match_case INSENSITIVE
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/2/match/path/match_str/1 /bar
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/2/match/path/match_criteria CONTAINS
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/2/switching_action/action HTTP_SWITCHING_SELECT_POOL
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/2/switching_action/status_code HTTP_LOCAL_RESPONSE_STATUS_CODE_200
consul kv put avi/config/httppolicyset/1/http_request_policy/rules/2/switching_action/pool_ref "/api/pool?name=ext-pool-B"
consul kv put avi/config/httppolicyset/1/is_internal_policy false

consul kv put avi/config/virtualservice/services/port 80
consul kv put avi/config/virtualservice/pool_ref '/api/pool?name=ext-pool-A'
consul kv put avi/config/virtualservice/vip/ip_address/addr 192.168.38.91
consul kv put avi/config/virtualservice/vip/ip_address/type V4
consul kv put avi/config/virtualservice/vip/vip_id 1
consul kv put avi/config/virtualservice/cloud_ref '/api/cloud?name=Default-Cloud'
consul kv put avi/config/virtualservice/ssl_key_and_certificate_refs '/api/sslkeyandcertificate?name=ext-cert'
consul kv put avi/config/virtualservice/ssl_profile_ref '/api/sslprofile?name=System-Standard'
consul kv put avi/config/virtualservice/application_profile_ref '/api/applicationprofile?name=System-Secure-HTTP'
consul kv put avi/config/virtualservice/services/ports/1/port 80
consul kv put avi/config/virtualservice/services/ports/2/port 443
consul kv put avi/config/virtualservice/services/ports/2/enable_ssl true
consul kv put avi/config/virtualservice/services/http_policies/1/index 11
consul kv put avi/config/virtualservice/services/http_policies/http_policy_set_ref '/api/httppolicyset?name=ext-httppolicy'
consul kv put avi/config/sslkeyandcertificate/1/name ext-cert
consul kv put avi/config/sslkeyandcertificate/1/certificate/self_signed true
consul kv put avi/config/sslkeyandcertificate/1/certificate/type SSL_CERTIFICATE_TYPE_VIRTUALSERVICE
