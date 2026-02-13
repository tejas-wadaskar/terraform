resource "aws_vpc" "t_vpc" {
    cidr_block = var.vpc_cidr

}

resource "aws_subnet" "t_sub" {
    vpc_id = aws_vpc.t_vpc.id 
    map_public_ip_on_launch= var.public_ip
    cidr_block = var.vpc_subnetA
    availability_zone =var.az 

}

resource "aws_security_group" "t_sg" {
    vpc_id = aws_vpc.t_vpc.id

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]


    }
}