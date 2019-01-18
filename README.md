This is an example ansible environment.

## Requirements

 - python >= 2.6
 - ansible 
 
 ## Deployment
 To deploy Avi Controller:
   1. Download Avi Controller
      - Navigate to https://portal.avinetworks.com and copy the download link 
        to the desired Avi Vantage version
      - download the Avi Controller software, i.e  
        `wget '<https://Avi_download_link > -O ~/ansible-automation/deploy/<cloud>/software/<version>.ova'`
         NOTE: the download link contains special characters so it needs to be enclosed with quotes
   
   2. Install dependencies  
      `cd ~/ansilbe-automation/deploy/<cloud>/playbooks`
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
       
