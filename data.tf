data "aws_ami" "ubuntu_ami" {
  most_recent = true
  owners = [ "099720109477" ]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-arm64-server-20240411"]
  }
}