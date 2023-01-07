Terraform 
===========
- It allow us to automate and manage our infrastructure, our plateform and services that run on that platform.
- It is open source tool and used HCL - Hasicorp Language in declarative form.
- It is the tool for infrastructure provisioning means Creating Ec2 servers on aws.

Ansible vs Terraform 
=====================
#### Similiarity
1. Both: Infra as Code.
2. Both automate: provisioning, configuring and managing the infrastructure.
#### Difference
Terraform is mainly infra provisioning tool where its power lies. it can also deploy the apps there but not effeciently.
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