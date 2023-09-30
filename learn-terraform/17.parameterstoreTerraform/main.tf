resource "aws_ssm_parameter" "ex"{
    count=length(var.params)
    name=var.params[count.index].name
    type=var.params[count.index].type
    value=var.params[count.index].value
}

variable "params"{
    default=[
        {name="name1",type="String",value="value1"},
        {name="name2",type="String",value="value2"}
    ]
}