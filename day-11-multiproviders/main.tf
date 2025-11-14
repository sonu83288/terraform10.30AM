resource "aws_instance" "name" {
    ami      = "ami-0c587d11c0a52bfbf"
    instance_type = "t3.micro"
  
}

resource "aws_s3_bucket" "name" {
    bucket = "chitta-unique-buckettttt"
    provider = aws.oregon
  
}