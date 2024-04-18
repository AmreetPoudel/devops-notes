resource "aws_instance" "Amrit_aws_instance" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = var.subnet_id
    tags = {
      Name= var.Name
    }
  
}