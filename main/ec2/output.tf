output "tejas_public_ip" {
    value = aws_instance.tejas.public_ip 
}

output "tejas_private_ip" {
    value = aws_instance.tejas.private_ip
}
# Inside modules/vpc/outputs.tf

output "subnetA_id" {
  value = aws_subnet.your_subnet_resource_name.id
}

output "t_sg" {
  value = aws_security_group.your_sg_resource_name.id
}