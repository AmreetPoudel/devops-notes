resource "aws_instance" "Amrit_aws_instance_public" {
  ami             = "ami-09298640a92b2d12c"
  instance_type   = "t2.micro"
  key_name        = "test"
  subnet_id       = aws_subnet.amrit_public_subnet.id

user_data = <<-EOF
#!/bin/bash
yum install httpd -y
systemctl start httpd
systemctl enable httpd
mkdir -p /var/www/html
echo "<h1>Amrit website : `hostname`</h1>" > /var/www/html/index.html
                EOF


  tags = {
    Name = "Amrit_aws_instance_public"
  }
  vpc_security_group_ids = [aws_security_group.amrit_sg.id]
  
}

resource "aws_instance" "Amrit_aws_instance_private" {
  ami             = "ami-09298640a92b2d12c"
  instance_type   = "t2.micro"
  key_name        = "test"
  subnet_id       = aws_subnet.amrit_private_subnet.id
  tags = {
    Name = "Amrit_aws_instance_private"
  }
  vpc_security_group_ids = [aws_security_group.amrit_sg.id]
}


resource "aws_security_group" "amrit_sg" {
  name = "amrit security group"
  vpc_id = aws_vpc.amrit_VPC.id
  description = "Security group for controlling access to EC2 instances"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH access from anywhere"
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTP access from anywhere"
  }
    ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTPS access from anywhere"
  }

  # Outbound rules: Allow all traffic out
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }

  tags = {
    Name = "amrit_security_group"
  }
  
}
output "Amrit_aws_instance_public_ip" {
  description = "To get public ip of bastian host "
  value = aws_instance.Amrit_aws_instance_public.public_ip
}
output "Amrit_aws_instance_private_ip" {
  description = "To ssh into private ec2 via bastian host"
  value = aws_instance.Amrit_aws_instance_private.private_ip
  
}