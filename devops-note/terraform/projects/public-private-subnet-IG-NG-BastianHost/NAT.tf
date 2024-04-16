# Step 6: Create a NAT Gateway in the public subnet
resource "aws_eip" "amrit_nat_eip" {
#   VPC = true
  tags = {
    Name = "amrit_nat_eip"
  }
}

resource "aws_nat_gateway" "amrit_nat_gateway" {
  allocation_id = aws_eip.amrit_nat_eip.id
  subnet_id     = aws_subnet.amrit_public_subnet.id

  tags = {
    Name = "amrit_nat_gateway"
  }
}

# Create a route table for the private subnet
resource "aws_route_table" "amrit_private_rt" {
  vpc_id = aws_vpc.amrit_VPC.id

  route {
    cidr_block   = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.amrit_nat_gateway.id
  }

  tags = {
    Name = "amrit_private_rt"
  }
}

# Associate the private route table with the private subnet
resource "aws_route_table_association" "amrit_private_rta" {
  subnet_id      = aws_subnet.amrit_private_subnet.id
  route_table_id = aws_route_table.amrit_private_rt.id
}
