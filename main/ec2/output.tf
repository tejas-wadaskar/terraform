output "tejas.public_ip" {
    value = aws_instance.tejas.public_ip 
}

output "tejas.private_ip" {
    value = aws_instance.tejas.private_ip
}