# aws_securitygroups_terraform_module
sg creation in aws in a particular vpc using terraform module


## how to use this module 

```
module "security_group" {
  source = "./security_group"
  name   = "my-security-group"
  description = "Security group for my application"
  vpc_id = "vpc-12345678"
  tags   = { Name = "my-security-group" }

  ingress_rules = [
    {
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      description      = "Allow HTTP traffic"
      self             = false
    }
  ]

  egress_rules = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      description      = "Allow all outbound traffic"
      self             = false
    }
  ]

  revoke_rules_on_delete = false
}

```
