This is an example ansible environment.

## Requirements

 - python >= 2.6
 - ansible 
 
 ## Configuration
 To configure Avi Controller:   
   1. Install dependencies  
      `cd ~/ansilbe-automation/configure/playbooks`
      `ansible-playbook prerequisites.yml`
      
   3. Create credentials file  
      `cd ~/ansible-automation/deploy/vmware/`
      - edit `credentials` file
      -  **I recommend encrypting the credentials file with ansible vault
    
   4. Edit config files   
      `cd ~/ansible-automation/deploy/<cloud>/config/`  
      - Create or edit a config file, there are two examples (18.1.3 and 17.2.14)
      
   5. Execute deployment playbook  
   `cd ~/ansible-automation/deploy/vmware/playbooks`  
   `ansible-playbook deploy.yml -e config=18.1.3`
       





# Avi Automation show case using ansible

This document talks about the avi automation using ansible. The automation covers deployment ( infrastructure ), avi initialization and configuration ( with couple of apps ) with site deployment examples.


## Pre-requisites
TO run and develop the playbooks, you would need
  Linux or Ubuntu machine
  Python 2.7+
  Ansible 2.4+
  
## preperation

1. edit creds.yml 
2. edit every file under config directory 

## Deploy controllers

 ansible-playbook playbooks/deploy.yml

## Initialize controllers
 ansible-playbook playbooks/initialize.yml

## Create applications:
 ansible-playbook playbooks/app/app.yml -e app={app-name}
app-name is the name of the config file in config/app. For example, to deploy the config /config/app/basic.yml, use "-e 'app=basic'"



ansible-playbook --vault-id @prompt playbook.yml
