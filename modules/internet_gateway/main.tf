resource "aws_internet_gateway" "project_gateway" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.project_name}-${var.environment}-gateway"
  }
}
