This is an example ansible environment.

## Requirements

 - python >= 2.6
 - ansible 
 
 ## Configuration
 Start in the configure directory:  
 `cd ~/ansible-automation/config/` 
 
  To configure Avi Controller:
   1. **If you will run playbooks from a remote machine.
      - Configure `./inventory` file
        - add remote host information. The inventory file has the following structure:  
      `[control]`    
      `localhost ansible_connection=local`
       Just replace *localhost ..* with your remote site information, and no changes will be required within the playbooks   
      
   2. Create credentials file  
      - use credentials-template to create a credentials file
        - copy credenials-template to credentials   
        `cp credentials-template credentials`
      - edit `credentials` file
      -  **I recommend encrypting the credentials file with ansible vault
         `ansible-vault encrypt credentials`  
         - Create vault password file and put in a local directory:
           `echo myvault_password > ~/vault_password.txt`
         - set password file in ansible.cfg file
           `vi playbook/ansible.cfg` and replace `vault_password_file` variable  
              
            
    
   3. Create config files
      #####We have designed the config structure to mimic the Avi UI.    
      There are examples of each Avi config file
      - edit or create `administration/sysconfig`
      - edit or create `infrastructure/<cloud>`
      - edit or create apps: `applications/`
      
   5. Execute config playbooks
      - execute from the playbooks directory:
        `cd playbooks`
      - Install prereqs:  
        `ansible-playbook prerequisites.yml`
      - Initialize controller:  
        `ansible-playbook initialize.yml
      - Run administration configuration: 
        `ansible-playbook admin.yml -e config=sysconfig' 
      - Run infra (cloud) config:  
        `ansible-playbook infra.yml -e cloud=azure'
      - Configure apps:  
        'ansible-playbook apps.yml -e app=myapp`
     
   `cd ~/ansible-automation/configuration/playbooks`  
   `ansible-playbook infra -e cloud=18.1.3`
   
