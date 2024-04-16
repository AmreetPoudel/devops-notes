resource "aws_instance" "Amrit_aws_instance_public" {
  ami             = "ami-09298640a92b2d12c"
  instance_type   = "t2.micro"
  key_name        = "amrit-public"
  subnet_id       = aws_subnet.amrit_public_subnet.id
  tags = {
    Name = "Amrit_aws_instance_public"
  }
  vpc_security_group_ids = [aws_security_group.amrit_sg.id]
}

resource "aws_instance" "Amrit_aws_instance_private" {
  ami             = "ami-09298640a92b2d12c"
  instance_type   = "t2.micro"
  key_name        = "amrit-public"
  subnet_id       = aws_subnet.amrit_private_subnet.id
  tags = {
    Name = "Amrit_aws_instance_private"
  }
  vpc_security_group_ids = [aws_security_group.amrit_sg.id]
}
