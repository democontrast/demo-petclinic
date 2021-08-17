# Spring PetClinic: A deliberately insecure Java web application

This sample application is based on https://github.com/Contrast-Security-OSS/spring-petclinic

**Warning**: The computer running this application will be vulnerable to attacks, please take appropriate precautions.

# Running standalone

You can run PetClinic locally on any machine with Java 1.8 RE installed.

1. Place a `contrast_security.yaml` file into the application's root folder.
1. Place a `contrast.jar` into the application's root folder.
1. Run the application using: 
```sh
java -javaagent:contrast.jar -Dcontrast.config.path=contrast_security.yaml  -Dcontrast.agent.java.standalone_app_name=spring-petclinic -jar spring-petclinic-1.5.1.jar [--server.port=8080] [--server.address=localhost] 
```
1. Browse the application at http://localhost:8080/

# Running in Azure (Azure Container Instance):

## Pre-Requisites

1. Place a `contrast_security.yaml` file into the application's root folder.
1. Install Terraform from here: https://www.terraform.io/downloads.html.
1. Install PyYAML using `pip install PyYAML`.
1. Install the Azure cli tools using `brew update && brew install azure-cli`.
1. Log into Azure using the same email address as you provided to your SE by using `az login`.
1. Edit the [variables.tf](variables.tf) file (or add a terraform.tfvars) to add your resource group and location (created by your SE), app name, server name and environment.
1. Run `terraform init` to download the required plugins.
1. Run `terraform plan` and check the output for errors.
1. Run `terraform apply` to build the infrastructure that you need in Azure, this will output the web address for the application.
1. Run `terraform destroy` when you would like to stop the app service and release the resources.
