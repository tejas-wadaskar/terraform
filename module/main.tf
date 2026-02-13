module "ec2" {
    source = "/home/ubuntu/terraform/main/Ec2"
    tejas_ami = "ami-0b6c6ebed2801a5cb"
    tejas_instance_type = "t3.micro"   
    tejas_key_name = "ubuntu2"
    tejas_subnetA = module.vpc.subnet_id 
    tejas_vpc_security_group = module.vpc.t_sg 
    tejas_disable_api_termination = false


}

module "vpc" {
  source =   "/home/ubuntu/terraform/main/vpc"
  vpc_cidr = "172.30.0.0/16"
  vpc_subnetA = "172.30.128.0/20"
  public_ip = true
  az = "us-east-1a"
}