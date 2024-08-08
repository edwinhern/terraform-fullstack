resource "aws_subnet" "public_subnets" {
  count             = length(var.public_subnets)
  vpc_id            = var.vpc_id
  cidr_block        = element(var.public_subnets, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)

  tags = {
    Name = "${var.project_name}-${var.environment}-public-${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnets" {
  count             = length(var.private_subnets)
  vpc_id            = var.vpc_id
  cidr_block        = element(var.private_subnets, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)

  tags = {
    Name = "${var.project_name}-${var.environment}-private-${count.index + 1}"
  }
}
