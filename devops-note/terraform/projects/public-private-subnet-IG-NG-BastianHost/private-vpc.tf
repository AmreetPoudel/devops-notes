
#step:1 create VPC
resource "aws_vpc" "amrit_VPC" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "amrit_VPC"
  }
}

#step2 create private and public subnet within that VPC
resource "aws_subnet" "amrit_public_subnet" {
    vpc_id = aws_vpc.amrit_VPC.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
    availability_zone = "ap-south-1a"
    tags = {
        Name= "amrit_public_subnet"
    }
  
}

resource "aws_subnet" "amrit_private_subnet" {
    vpc_id = aws_vpc.amrit_VPC.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-south-1a"
    map_public_ip_on_launch = false
    tags = {
      Name="amrit_private_subnet"
    }
  
}
