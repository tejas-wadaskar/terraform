output "vpc_id" {
    value = aws_vpc.t_vpc.id
}
output "subnet-id" {
    value = aws_subnet.t_sub.id

}
output "security_group_id" {
    value = aws_security_group.t_sg.id 
}

