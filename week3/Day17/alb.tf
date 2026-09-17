variable "alb_subnet_ids" {
  description = "Subnet IDs for the ALB. They must span at least two Availability Zones."
  type        = list(string)
}

resource "aws_lb" "PathnexALB" {
  name               = "pathnex-alb"
  load_balancer_type = "application"
  subnets            = var.alb_subnet_ids

  tags = {
    Name = "Pathnex-ALB"
  }
}
