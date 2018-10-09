#!/bin/bash

cd consul-population-scripts 
./configControllerPopulation.sh
./configDeployPopulation.sh
./configExtensivePopulation.sh
./configInitSePopulation.sh
./credsPopulation.sh



cd ../consul-file-creation-scripts
./getConfigController.sh
./getConfigDeploy.sh
./getConfigExtensive.sh
./getConfigInitSe.sh
./getCreds.sh
