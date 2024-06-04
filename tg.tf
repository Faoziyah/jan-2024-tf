resource "aws_lb_target_group" "test" {
  name = "ubuntu-vm-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc.id
}