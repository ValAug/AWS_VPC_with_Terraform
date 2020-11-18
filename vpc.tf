resource "aws_vpc" "sayon_test_vpc" {
  cidr_block = var.cidr

  tags = {
    Name = "sayon_main_test_vpc"
  }
}


resource "aws_subnet" "sayon_test_subnet_pub" {
  vpc_id                  = aws_vpc.sayon_test_vpc.id
  cidr_block              = var.pub_subnet_cidr
  map_public_ip_on_launch = true

  depends_on = [aws_internet_gateway.gw]


  tags = {
    Name = "sayon_test_subnet_pub"
  }
}

resource "aws_subnet" "sayon_test_subnet_priv" {
  vpc_id     = aws_vpc.sayon_test_vpc.id
  cidr_block = var.pri_subnet_cidr




  tags = {
    Name = "sayon_test_subnet_priv"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.sayon_test_vpc.id

  tags = {
    Name = "sayon_test_vpc_internet_gateway"
  }
}