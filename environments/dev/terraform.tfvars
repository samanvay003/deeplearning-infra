region         = "ap-south-1"
vpc_cidr       = "10.0.0.0/16"
cluster_name   = "deeplearning-eks"
desired_size   = 1
max_size       = 3
min_size       = 1
instance_types = ["t2.micro"]  
