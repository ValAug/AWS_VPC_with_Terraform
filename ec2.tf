resource "aws_instance" "back_end_vm" {
  ami           = var.ami
  instance_type = var.ec2_type
  private_ip    = "10.0.0.12"
  subnet_id     = aws_subnet.sayon_test_subnet_priv.id

  tags = {
    Name = "back_end_vm"
  }
}

resource "aws_instance" "front_end_vm" {
  ami           = var.ami_01
  instance_type = var.ec2_type_01
  subnet_id     = aws_subnet.sayon_test_subnet_pub.id

  tags = {
    Name = "front_end_vm"
  }
}

resource "aws_instance" "bastion_vm" {
  ami           = var.ami_02
  instance_type = var.ec2_type_02

  tags = {
    Name = "bastion_vm"
  }

}

resource "aws_eip" "back_end_eip" {
  instance = aws_instance.front_end_vm.id
  vpc      = true

  depends_on = [aws_internet_gateway.gw]

  tags = {
    Name = "front_end_vm"
  }
}