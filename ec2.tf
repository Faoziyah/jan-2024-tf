resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu_ami.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.1.id
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  tags = {
    Name = local.ubuntu_vm_name
  }
}