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

locals{
    my_list=tolist(var.user_names)
}

resource "aws_iam_user" "ex"{
    for_each = { for idx , value in local.my_list: idx=>value}
    ami=data.aws_ami.ami_ex.id
    instance_type=t2.micro
    tags={
        Name=each.value
    }    
}