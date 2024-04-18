module "ec2" {
    source = "/home/ambroligence/github/devops-note/terraform/projects/modules/ec2"
    ami=var.ami
    subnet_id = var.subnet_id
    key_name = var.key_name
    Name = var.Name
    instance_type = var.instance_type
    region= var.region
}

