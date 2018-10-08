#!/bin/bash  -x

CONSUL_TEMPLATE_BINARY_PATH=../../../consul-template
TEMPLATE_FILE_PATH=./consul-templates/configExtensive.tpl
OUTPUT_FILE_PATH=../config/apps/extensive_test.yml

${CONSUL_TEMPLATE_BINARY_PATH} -log-level trace -once -template  ${TEMPLATE_FILE_PATH}:${OUTPUT_FILE_PATH} &> consul-template-logs.txt


