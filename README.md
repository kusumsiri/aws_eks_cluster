# Creating an AWS EKS cluster by Terraform
This code creates an AWS EKS cluster by Terraform.

That cluster can be used to deploy [Kubernetes](https://kubernetes.io/) applications.

AWS region, vpc name, vpc cidr block can be set via 01_variables.tf file.

Also the code will automatically create a public subnet in all availability zones (AZs) within the selected AWS region.
