output "tejas_public_ip" {
    value = aws_instance.tejas.public_ip 
}

output "tejas_private_ip" {
    value = aws_instance.tejas.private_ip
}
