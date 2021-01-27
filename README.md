# AWS-EKS-launchpad

To roll-out please follow the instructions:

Install and configure AWS CLI, kubectl & Terraform </br >
https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html </br >
https://kubernetes.io/docs/tasks/tools/install-kubectl/ </br >
https://learn.hashicorp.com/tutorials/terraform/install-cli </br >

```bash
cd us-east1/launchpad
terraform init
terraform apply
aws eks update-kubeconfig --region us-east-1 --name launchpad
```
Follow the instructions from us-east1/launchpad/kubernetes

To destroy infrastructure run:

```bash
cd us-east1/launchpad
terraform destroy
```