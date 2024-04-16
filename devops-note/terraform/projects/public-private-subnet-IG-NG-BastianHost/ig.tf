resource "aws_internet_gateway" "amrit_IG" {
    vpc_id = aws_vpc.amrit_VPC.id
    tags = {
      Name = "amrit_IG"
    }
  
}

# Create a route table for the public subnet
resource "aws_route_table" "amrit_public_rt" {
  vpc_id = aws_vpc.amrit_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.amrit_IG.id
  }

  tags = {
    Name = "amrit_public_rt"
  }
}

# Associate the public route table with the public subnet
resource "aws_route_table_association" "amrit_public_rta" {
  subnet_id      = aws_subnet.amrit_public_subnet.id
  route_table_id = aws_route_table.amrit_public_rt.id
}
