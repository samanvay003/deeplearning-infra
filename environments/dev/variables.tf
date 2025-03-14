variable "region" { type = string }
variable "vpc_cidr" { type = string }
variable "cluster_name" { type = string }
variable "desired_size" { type = number }
variable "max_size" { type = number }
variable "min_size" { type = number }
variable "instance_types" { type = list(string) }
