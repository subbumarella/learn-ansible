data "aws_ami" "ami_ex" {
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}

variable "user_names"{
    description="IAM user names"
    type=set(string)
    default =["user11","user12","user13"]
}


resource "aws_iam_user" "ex"{
    for_each=var.user_names
    name=each.value
}