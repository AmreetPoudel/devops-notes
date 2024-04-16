resource "aws_instance" "Amrit_aws_instance_public" {
    ami = "ami-09298640a92b2d12c"
    key_name = "amrit-public"
    subnet_id = aws_subnet.amrit_public_subnet.id
    instance_type = "t2.micro"
    tags = {
      Name = "Amrit_aws_instance_public"
    }
    security_groups = aws_instance.Amrit_aws_instance_private.security_groups
  
}
resource "aws_instance" "Amrit_aws_instance_private" {
    ami = "ami-09298640a92b2d12c"
    key_name = "amrit-public"
    subnet_id = aws_subnet.amrit_private_subnet.id
    instance_type = "t2.micro"

    tags = {
      Name = "Amrit_aws_instance_private"
    }
    security_groups = aws_instance.Amrit_aws_instance_public.vpc_security_group_ids

}