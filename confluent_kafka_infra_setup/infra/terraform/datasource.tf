##### Data Source #####

data "aws_caller_identity" "account" {}
data "aws_region" "current" {}
data "aws_vpc" "current_vpc" {}

data "aws_subnets" "subnet_ids" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.current_vpc.id]
  }
}