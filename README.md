Terraform 
===========
- It allow us to automate and manage our infrastructure, our plateform and services that run on that platform.
- It is open source tool and used HCL - Hasicorp Language in declarative form.
- It is the tool for infrastructure provisioning means Creating Ec2 servers on aws.
- It is a universal IAC tool - One tool for all cloud providers.

Ansible vs Terraform 
=====================
#### Similiarity
1. Both: Infra as Code.
2. Both automate: provisioning, configuring and managing the infrastructure.
#### Difference
Terraform is mainly infra provisioning tool where its strength lies. it can also deploy the apps there but not effeciently.
Ansible is mainly a infra configuration tool. After Infra Creation, It can configure it with required dependencies of an application and deploy the app.

UseCases of Terraform
======================
1. Managing existing infrastructure.
2. Replicating Infrastructure (Dev -> Prod).

Terraform Architecture
======================
- It has 2 main components :
    - Terraform Core : having 2 input sources (TF Config File, TF State)
    - Terraform Providers : Where to deploy above tf config.

![Terraform-Architecture](https://github.com/nirdeshkumar02/Terraform-Learning/blob/master/tf-architecture.png)

Terraform Commands
===================
1. Refresh - Query infra provider to get current state.
2. Plan - Create an Execution Plan - Determines what actions are necessary to achieve the desired state. (Just Preview, No changes to real resources.)
3. Apply - Excute the above plan - Changes to real resources.
4. Destroy - Destroy the resources/Infra.
5. init - Initializes a working directory and install the providers.
6. terrafrom apply -auto-approve - Directly apply without confirmation.
7. state - Gives the existing state.

Terraform Providers
====================
- It helps in expose resources for specific infra platform (eg. AWS).
- It is responsible for understanding API of that platform.
- Providers are a logical abstraction of an upstream API. They are responsible for understanding API interactions and exposing resources.

Project_1 - Beginner Friendly 
==============================
This is a basic terraform project where we look how providers are integrated and After Initialization of providers How can we define resources.
- In the Provider Block, We need to define the Provider Credentials where you wanna create those resources.
- For the best practice, The credential must be taken from the environment variable.
- Terraform follow idempodent - If you apply 100 times you will get same result everytime.
- To delete any resources there is 2 way -
    1. remove the resource block which you wanna delete and run terraform apply command.
    2. Give resouce name <resource_type.resource_name> at time of terraform destroy command. - Terrraform destroy -target aws_subnet.dev-subnet-1
- Best way to delete is using removing block from config file as it will kept the state of last execution.
- Default values is used when tf doesn't find the value in vars file, env and through cli. But it won't prompt you to take value.
- There are 3 ways to pass values to variable -
    1. Using Environment Variable. - set the value of variable in your environment and if will take the ref from it.
    2. Using TF Cli - terraform apply and pass the variable value => tf apply -var "subnet_cidr=10.0.30.0/16"
    3. Using *.vars file - tf apply -var-file <file name> only need to pass file name if it is other than terraform.tfvars file.
- There are 4 type of data type -
    1. String
    2. Number
    3. Bool
    4. List(string)/List(Objects)/Map
- Adding Provider Creds to project - 
    1. Add provider creds to environment variable - terminal specific
    2. By adding aws creds to the .aws/credential 
    3. By Defining AWS Profile as creds if multiple aws creds using 
- Adding custom env variable related to terraform -
    1. export TF_VAR_avail_zone="us-east-1a"
    2. Now, You can ref it to configuration file as - var.avai_zone

Project_2 - AWS Infra Provisioning
=======================================
#### TASK WORKFLOW 
- Provision an EC2 Instance on AWS
    - Create Custom VPC
    - Create Custom Subnet 
    - Create Internet Gateway & Route Table
    - Attach IGW & Route Table with custom VPC
    - Create EC2 Instance in custom VPC.
- Deploy Nginx Docker Container on EC2 Instance
- Create Security Group (Firewall) to allow traffic.

![Project-2-Task-Workflow](https://github.com/nirdeshkumar02/Terraform-Learning/blob/master/project-2.png)

#### Project-2 Refrence - (<a href="https://github.com/nirdeshkumar02/Terraform-Learning/blob/master/project-2" target="_blank">Click Here</a>)
#### Project2-With-Provisioner - (<a href="https://github.com/nirdeshkumar02/Terraform-Learning/blob/master/project-2-with-provisioner" target="_blank">Click Here</a>)
#### Project-2-with-Modules - (<a href="https://github.com/nirdeshkumar02/Terraform-Learning/blob/master/project-2-with-modules" target="_blank">Click Here</a>)
