data "aws_ami" "ami_ex" {
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}

variable "user_names"{
    description="IAM user"
    type=set(string)
    default=["user11","user12","user13"]
}

locals{
    my_list=tolist(var.user_names)
}

resource "aws_iam_user" "ex"{
    for_each={for idx, value i local.my_list: idx=>value}
    name=each.value
}