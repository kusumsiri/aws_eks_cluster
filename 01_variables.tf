variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}


variable "vpc_name" {
  description = "vpc name"
  type        = string
  default     = "My-VPC"
}

variable "vpc_cidr" {
  description = "vpc cidr"
  type        = string
  default     = "172.32.0.0/16"
}
