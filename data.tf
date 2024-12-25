# Data source to get information about a specific security group by name
data "aws_security_group" "example" {
  name = var.security_group_name
}

# Data source to get information about all security groups in a VPC
data "aws_security_groups" "all" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

# Data source to get information about a security group by ID
data "aws_security_group" "by_id" {
  id = var.security_group_id
}

# Data source to get information about a security group by tags
data "aws_security_group" "by_tags" {
  filter {
    name   = "tag:Name"
    values = [var.security_group_tag_name]
  }
}

# Data source to get information about a default security group in a VPC
data "aws_default_security_group" "default" {
  vpc_id = var.vpc_id
}
