# resource "aws_instance" "name" {
#     ami = "ami-0c587d11c0a52bfbf"
#     instance_type = "t3.micro"
#     count = 2
#     # tags = {
#     #     name = "dev"
#     # }
#     tags = {
#     name = "dev-${count.index + 1}"
#   }
# }

variable "env" {
    type = list(string)
    default = [ "dev","prod" ]
  
}

resource "aws_instance" "name" {
    ami = "ami-0c587d11c0a52bfbf"
    instance_type = "t3.micro"
    count = 2
    # tags = {
    #     name = "dev"
    # }
    tags = {
    name = var.env[count.index]
  }
}