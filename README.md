# VPC-terraform-git-actions
Creating VPC terraform as IAAAC and github actions as CI/CD

This Terraform project deploys the following infrastructure on AWS:
A custom VPC having two public. It also has an internet gateway deployed to enable internet traffic within the VPC and route table to which the public subnets are associated.

EC2 instance servers are deployed within the public subnets along with security group attached to them to enable inbound traffic.

An elastic load balancer is created to distribute the incoming traffic across the servers.


Architectural Diagram

![Alt text](Achitecture.png)

Apart from the infrastructure, this project also implements the following Terraform features:
Modularity: Terraform modules are used to build separate components for ec2 , vpc ,alb and sg.

Flexibility: Terraform variables, outputs, and tfvars are used to enable more flexible and modular code by avoiding hard-coded values.

Remote Backend: S3 bucket is configured as a remote backend for storing the Terraform statefile.

Static Checks: Static checks using terraform validate, and terraform plan are performed to check the formatting, validate configurations, and compare the desired state with the actual state, respectively.

Secrets Management: Secrets are managed using Hashicorp Vault and the database credentials are stored securely in the vault.



├── development
│   ├── provider.tf
│   ├── main.tf
│   ├── terraform.tfvars
│   └── variables.tf
└── modules
    ├── alb
    │   ├── main.tf
    │   ├── outputs.tf
    │   └── variables.tf
    ├── ec2
    │   ├── main.tf
    |   ├── data.tf
    |   ├── output.sh
    │   └── variables.tf
    ├── sg
    │   ├── main.tf
    │   ├── outputs.tf
    │   └── variables.tf
    ├── load-balancer
    │   ├── main.tf
    │   ├── outputs.tf
    │   └── variables.tf
    ├── vpc
    │   ├── main.tf
    │   ├── outputs.tf
    └── └── variables.tf
