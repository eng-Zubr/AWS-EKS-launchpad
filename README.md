# AWS-EKS-launchpad

To roll-out please follow the instructions:

Install and configure AWS CLI, kubectl & Terraform
https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html
https://kubernetes.io/docs/tasks/tools/install-kubectl/
https://learn.hashicorp.com/tutorials/terraform/install-cli

```bash
cd us-east1/launchpad
terraform init
terraform apply
```
Follow the instructions from us-east1/launchpad/kubernetes

To destroy infrastructure run:

```bash
cd us-east1/launchpad
terraform destroy
```