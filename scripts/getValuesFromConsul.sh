#!/bin/bash  -x

CONSUL_TEMPLATE_BINARY_PATH=../../../consul-template
TEMPLATE_FILE_PATH=./aviConsulTemplate.tpl
OUTPUT_FILE_PATH=../ansible/clouds/vmware/deployment/vars/main_test.yml

${CONSUL_TEMPLATE_BINARY_PATH} -once -template  ${TEMPLATE_FILE_PATH}:${OUTPUT_FILE_PATH}


