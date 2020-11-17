#instance variables
variable "ami" {
  type = string
  description = "instance creation"
  default = "ami-0947d2ba12ee1ff75"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "azones_1a" {
  type = list(string)
  default = ["us-east-1a"]
}
variable "azones_1b" {
  type = list(string)
  default = ["us-east-1b"]
}
variable "azones_1c" {
  type = list(string)
  default = ["us-east-1c"]
}

variable "subnet_1a" {
  type = list(string)
  default = ["subnet-3736747a"]
}

variable "subnet_1b" {
  type = list(string)
  default = ["subnet-dae65985"]
}

variable "subnet_1c" {
  type = list(string)
  default = ["subnet-303e8d56"]
}

variable "key_name" {
  type = string
  description = "key pair"
  default = "eu-central"
}


variable "tags_1a" {
  type = list(string)
  default = ["Instance","indexer"]
}

variable "tags_1b" {
  type = list(string)
  default = ["Instance","indexer","DeploymentManager"]
}

variable "tags_1c" {
  type = list(string)
  default = ["searchHead","indexer","clusterMaster"]
}

variable "security_group_1a" {
  type = list(string)
  description = "security group for az 1a"
  default = ["aws_security_group.Indexer.id","aws_security_group.Instance.id"]
}

variable "security_group_1b" {
  type = list(string)
  description = "security_group_1b"
  default = ["aws_security_group.Indexer.id","aws_security_group.Instance.id","aws_security_group.DM.id"]
}

variable "security_group_1c" {
  type = list(string)
  description = "security group for az 1c"
  default = ["aws_security_group.Indexer.id","aws_security_group.SH.id","aws_security_group.CM.id"]
}