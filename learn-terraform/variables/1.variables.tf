variable "plain"{
   default= "Devops Training"
}

variable "course_List_Type"{
    default = [
        "Devops",
        "Python",
        "AWS"
    ]
}

variable "course_Map_Type"{
    default={
        Devops={
            name= "Devops"
            Timing= "2hrs"
            Duraion= 90
        }
    }
}

output "plain"{
    value="The value is -${var.plain}"
}
output "course_List_Type"{
    value="The course type is -${var.course_List_Type}"
}
output "course_Map_Type"{
    value="The Course Map Type is -${var.course_Map_Type}"
}