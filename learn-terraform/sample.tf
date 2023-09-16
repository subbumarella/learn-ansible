provider "aws"{
 region= "us-east-1"
 access_key= "AKIA35ZTANOD2LLS32D6"
 secret_key= "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"
}

resource "aws_instance" "My First EC2 Instace"{
    ami= "ami-04cb4ca688797756f"
    instance_type= "t2.micro"
    key_name= "roboshopkeypair"
    tags={
        Name= "Sample EC2"
    }    
}