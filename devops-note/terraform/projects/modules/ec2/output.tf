output "instance_public_ip" {
    value = aws_instance.Amrit_aws_instance.public_ip
}
output "instance_private_ip" {
  value = aws_instance.Amrit_aws_instance.private_ip
}