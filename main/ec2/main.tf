resource  "aws_instance" "tejas" {
    ami = var.tejas_ami
    instance_type =  var.tejas_instance_type 
    key_name = var.tejas_key_name 
    subnet_id = var.tejas_subnetA 
    vpc_security_group_ids = var.tejas_vpc_security_group 
    disable_api_termination = var.tejas_disable_api_termination  
    
}