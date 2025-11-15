variable "env" {
    type = list(string)
    default = [ "dev","prod" ]
  
}

resource "aws_instance" "name" {
    ami = "ami-0c587d11c0a52bfbf"
    instance_type = "t3.micro"
    for_each = toset(var.env)
    # tags = {
    #     name = "dev"
    # }
    tags = {
    name = each.value
  }
}