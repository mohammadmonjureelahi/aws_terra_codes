variable "environment" {
  
}

variable "instancetype" {
    type = map
    default = {
        dev = "t2.micro"
        prod = "t2.small"
    }
  
}

variable "myregion" {
  
}
