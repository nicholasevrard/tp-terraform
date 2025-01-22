resource "aws_instance" "app_server" {
  count = 3  
  ami           = "ami-0cb91c7de36eed2cb"
  instance_type = "t2.micro"

  key_name = "terraform-ssh-key"

  tags = {
    Name = "instance${count.index}"
  }
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "bucket-s3-1234" 
  acl    = "private"

  tags = {
    Name        = "example-bucket"
    Environment = "Dev"
  }
}

