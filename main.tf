provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Server" {
  ami = "ami-0279c3b3186e54acd"
  instance_type = "t2.micro"
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  tags = {
    "Name" = "Web Server"
  }
}