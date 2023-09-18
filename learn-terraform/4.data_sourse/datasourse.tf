data "aws_ec2_spot_price" "ex"{
    instance_type="t2.micro"
    availability_zone="us-east-1a"

    filter{
        name="product-description"
        values=["Linux/UNIX"]
    }
}

data "aws_security_group" "sg"{
    name="allow-all"
}

output "aws_price"{
    value=data.aws_security_group.sg.id
}

output "price"{
    value=data.aws_ec2_spot_price.ex.spot_price
}
output "spot_price_timestamp"{
    value=data.aws_ec2_spot_price.ex.spot_price_timestamp
}