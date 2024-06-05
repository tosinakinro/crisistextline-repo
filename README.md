# crisistextline-repo

# AWS Infrastructure with Terraform

This repository contains Terraform configurations for setting up AWS infrastructure with the following components:

- VPC with two private subnets
- DB Subnet Group
- Security Group allowing access on port 5432
- Custom DB Parameter Group
- RDS PostgreSQL instance

## Architecture Overview

The architecture includes:
- A VPC 
- Two private subnets (`subnet-1` and `subnet-2`) located in different availability zones (`us-east-2a` and `us-east-2b`).
- A private route table associated with the private subnets.
- A DB subnet group and a security group configured to allow PostgreSQL access.
- A custom DB parameter group for PostgreSQL.
- An RDS PostgreSQL instance configured for Multi-AZ deployment across the two subnets.

## File Structure

- `main.tf`: Main Terraform configuration file.
- `variables.tf`: Variable definitions for the main configuration.
- `provider.tf`: provider definitions.
- `backend.tf`: Backend configuration to store statefile.
- `terraform.tfvars`: Variable values for the configuration.
- `vpc/`: Module for VPC and subnets.
  - `main.tf`: VPC and subnets configuration.
  - `variables.tf`: Variable definitions for the VPC module.
  - `outputs.tf`: Output definitions for the VPC module.
- `db_subnet_group/`: Module for DB subnet group.
  - `main.tf`: DB subnet group configuration.
  - `variables.tf`: Variable definitions for the DB subnet group module.
  - `outputs.tf`: Output definitions for the DB subnet group module.
- `security_group/`: Module for security group.
  - `main.tf`: Security group configuration.
  - `variables.tf`: Variable definitions for the security group module.
  - `outputs.tf`: Output definitions for the security group module.
- `db_parameter_group/`: Module for DB parameter group.
  - `main.tf`: DB parameter group configuration.
  - `variables.tf`: Variable definitions for the DB parameter group module.
  - `outputs.tf`: Output definitions for the DB parameter group module.
- `rds_instance/`: Module for RDS instance.
  - `main.tf`: RDS instance configuration.
  - `variables.tf`: Variable definitions for the RDS instance module.
  - `outputs.tf`: Output definitions for the RDS instance module.

## Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- AWS CLI configured with appropriate credentials.
- An AWS account with necessary permissions to create the resources.

### Usage

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
2. **Navigate into the repo directory and run the following commands:**
   ```bash
   terraform init
   terraform plan
   terraform apply
3. **Variables are defined in variables.tf and values are provided in terraform.tfvars. Update the terraform.tfvars file with your specific values.**
