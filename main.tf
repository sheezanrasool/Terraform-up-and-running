provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Server" {
  ami = "ami-04902260ca3d33422"
  type = "t2.micro"
  tags = {
    "Name" = "Web Server"
  }
}