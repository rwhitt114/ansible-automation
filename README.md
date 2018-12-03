# Avi Automation show case using ansible

This document talks about the avi automation using ansible. The automation covers deployment ( infrastructure ), avi initialization and configuration ( with couple of apps ) with sample site deployment example.

Following topics will help you in setting up the environment and executing the ansibe playbooks

## Pre-requisites

TO run and develop the playbooks, you would need
  Linux or Ubuntu machine
  Python 2.7+
  Ansible 2.4+
  
Run pre-req playbook: 
ansible-playbook playbooks/prerequisites.yml

## preperation

1. edit creds.yml 
2. edit every file under config directory 

## Deploy controllers

 ansible-playbook playbooks/deploy.yml

## Initialize controllers
 ansible-playbook playbooks/initialize.yml

## Create applications:
 ansible-playbook playbooks/app/app.yml -e app={app-name}.yml
app-name.yml is the name of the config file in config/app. For example, to deploy the config /config/app/basic.yml, use "-e 'app=basic.yml'"
