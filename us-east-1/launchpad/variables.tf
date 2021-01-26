# Common values

variable "aws_region" {
  default = "us-east-1"
  description = "AWS region"
}

variable "aws_profile" {
  default = "default"                  #use default if have only one
  description = "AWS region"
}

variable "project_name" {
  default = "launchpad"
  description = "Some project name - lowercase"
}
