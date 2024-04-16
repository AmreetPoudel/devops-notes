
resource "aws_instance" "aws_instance_amrit" {
    instance_type = "t2.micro"
    subnet_id = "subnet-09bd7a0e0643e13b6"
    ami = "ami-09298640a92b2d12c"
    key_name = "amrit-public"

    tags = {
      Name = "terraform-ec2"
    }
}