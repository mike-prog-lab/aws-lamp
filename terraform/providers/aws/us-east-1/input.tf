variable "vpc_id" {
  description = "The VPC id in which EC2 instances will run."
  type        = string
}

variable "ec2_ami" {
  description = "AMI that will be used for EC2 instances."
  type        = string
  default     = "ami-02e136e904f3da870"
}

variable "ec2_type" {
  description = "The type of EC2 instances to run."
  type        = string
  default     = "t2.micro"
}

variable "ec2_instance_count" {
  description = "Count of LAMP EC2 instances to run."
  type        = number
  default     = 1
}

variable "dev_key" {
  description = "SSH public key to access EC2 instances."
  type        = string
}

variable "dev_cidr_blocks" {
  description = "List of developers cidr blocks."
  type        = list(string)
}