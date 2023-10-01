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
        {name="name3",type="String",value="value3"},
        {name="name4",type="String",value="value4"}
        {name="name5",type="String",value="value5"},
        {name="name6",type="String",value="value6"}
    ]
}