data "aws_ami" "ami_example"{
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}

resource "aws_instance" "my_aws"{
    ami=data.aws_ami.ami_example.id
    instance_type="t2.micro"
    tags={
        Name="Example"
    }
}

resource "aws_s3_bucket" "sample_bucket"{
    bucket="mybucket"
    acl="public"   
}

terraform {
    backend "s3"{
        bucket=aws_s3_bucket.sample_bucket.id
        key="sample/terraform.tfstate"
        region="us-east-1"
    }
}
