
resource "aws_instance" "FirstEC2Instace"{
    ami= "ami-03265a0778a880afb"
    instance_type= "t2.micro"
    tags={
        Name= "Sample EC2"
    }    
}

output "public_ip_address"{
    description = "Getting Public IP Address"
    value = aws_instance.FirstEC2Instace.public_ip
}
output "security_groups"{
    description= "Getting Security Groups"
    value =aws_instance.FirstEC2Instace.security_groups
}