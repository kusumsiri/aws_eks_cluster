
provider "aws" {
  region = var.region
}

resource "aws_eks_cluster" "my_cluster" {
  name     = "my_cluster"
  role_arn = aws_iam_role.eks_iam_role.arn

  vpc_config {
    subnet_ids = [aws_subnet.public_subnet[0].id, aws_subnet.public_subnet[1].id]
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups
  depends_on = [
    aws_iam_role_policy_attachment.my-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.my-AmazonEKSVPCResourceController,
  ]
}
