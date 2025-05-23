# DevOps Assignment: Infrastructure as Code Setup for Prefect Worker on Amazon ECS

This project sets up a **Prefect worker** on **Amazon ECS Fargate** using **Terraform** for Infrastructure as Code (IaC). The deployment includes **VPC configuration, ECS cluster, IAM roles, networking components**, and integration with **Prefect Cloud**.

## Tool Choice
Terraform is chosen for its **cross-cloud flexibility, modular configurations, and improved scalability** compared to AWS-native CloudFormation.

## Prerequisites
Before deploying, ensure you have an **AWS account**, **Terraform v1.2.0 or higher**, **AWS CLI** configured, a **Prefect Cloud account & API key**, and Docker installed for local testing.

## Infrastructure Setup
This Terraform configuration provisions a **VPC** with public and private subnets, an **ECS Cluster** running tasks on **Fargate**, an **IAM Role** with permissions for **AWS Secrets Manager**, a **Prefect Worker** connected to **Prefect Cloud**, and networking components such as a **NAT Gateway**.

## Deployment Instructions
Clone the repository using `git clone https://github.com/varalakshmikonjeti/prefect-ecs-terraform.git` and navigate into it with `cd prefect-ecs-terraform`. Initialize Terraform by running `terraform init`. Modify `terraform.tfvars` with AWS credentials and Prefect API key. Deploy infrastructure using `terraform apply -auto-approve`. Verify the deployment via AWS Console and Prefect Cloud.

## Outputs
Terraform will output the **ECS Cluster ARN** and instructions to verify Prefect Work Pool.

## Verification of Deployment
After successfully applying the Terraform configuration, the following resources should be verified in the AWS Console and Prefect Cloud. Screenshots capturing each step have been **provided in the `screenshots/` folder** for reference.

- **ECS Cluster:** Navigate to **AWS Console → ECS** and check that `prefect-cluster` is active. This confirms that the ECS cluster has been provisioned successfully, and is ready to run tasks.  
- **VPC Configuration:** Verify subnets in **AWS Console → VPC → Subnets**. Ensure that both public and private subnets are correctly created and associated with the ECS setup.  
- **ECS Task Definitions:** Go to **AWS Console → ECS → Task Definitions** and check that `prefect-worker-task` is in an **ACTIVE** state. This confirms that Prefect worker is configured and ready to execute workflows.  
- **Prefect Cloud:** Navigate to **Prefect Cloud → Work Pools** and check that `ecs-work-pool` is properly connected. A successful connection ensures that the ECS worker is registered with Prefect Cloud for orchestration.

📂 **All verification screenshots are stored in the `screenshots/` folder in the repository.** Be sure to review them for confirmation of the setup.

## Cleanup
To destroy all resources, execute `terraform destroy -auto-approve`. Manually delete AWS Secrets if required.

## Challenges & Learnings
Key learnings include **IAM role setup, networking configurations, and securely handling Prefect API keys via AWS Secrets Manager**. Challenges faced involved **IAM permissions troubleshooting, ECS networking misconfigurations, and Terraform state management**.

## Suggested Improvements
Future enhancements include **auto-scaling ECS workers, CloudWatch monitoring, and modular Terraform configurations**.

## Submission Deliverables
Include the **GitHub repository link**, **README.md documentation**, **screenshots verifying deployment**, and a **deployment report** detailing tool choice, learnings, and challenges.
