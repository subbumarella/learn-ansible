data "aws_ec2_spot_price" "ex"{
    instance_type="t2.micro"
    availability_zone="us-east-1a"
}

output "price"{
    value=data.aws_ec2_spot_price.ex.spot_price
}