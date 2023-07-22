# Creating an AWS EKS cluster by Terraform
This code creates an [AWS EKS cluster](https://docs.aws.amazon.com/eks/latest/userguide/clusters.html) by Terraform.

That cluster can be used to deploy [Kubernetes](https://kubernetes.io/) applications.

AWS region, vpc name, vpc cidr block can be set via [01_variables.tf](https://github.com/kusumsiri/aws_eks_cluster/blob/main/01_variables.tf) file.

Also the code will automatically create a public subnet in all availability zones (AZs) within the selected AWS region.

## Getting Started
Relevant command during deployment.

Step 1 
```
terraform init
```
Step 2
```
terraform plan
```
Step 3
```
terraform apply
```
The EKS cluster is now ready on the AWS cloud to deploy Kubernetes applications
