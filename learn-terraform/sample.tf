
resource "aws_instance" "FirstEC2Instace"{
    ami= "ami-03265a0778a880afb"
    instance_type= "t2.micro"
    tags={
        Name= "Sample EC2"
    }    
}

output "getting_IP_Address"{
    value = aws_instance.FirstEC2Instace.public_ip
}