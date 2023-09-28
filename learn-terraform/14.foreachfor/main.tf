data "aws_ami" "ami_ex" {
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}

variable "user_names"{
    description="IAM user"
    type=set(string)
    default=["frontend","mongodb","catalogue"]
}

resource "aws_instance" "ex"{
    for_each = { for idx , value in var.user_names: idx=>value}
    ami=data.aws_ami.ami_ex.id
    instance_type="t2.micro"
    name=each.value
    
    tags={
        Name=each.value
    }    
}