output "vpc_id" {
    value = aws_vpc.t_vpc.id
}
output "subnet_id" {
    value = aws_subnet.t_sub.id

}

# Inside modules/vpc/outputs.tf

output "t_sg" {
  value = aws_security_group.your_sg_resource_name.id
}

output "webserversg_Arn" {
    value = aws_security_group.webserversg.arn
}