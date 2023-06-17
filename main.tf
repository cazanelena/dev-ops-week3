provider "aws" {
  region = "eu-west-2"  # Update with your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-0804a2711fa3726f3"  # Update with your desired AMI ID
  instance_type = "t2.micro"
  
  tags = {
    Name = "Week3-CI/CD-fac28"
  }

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > index.html
              nohup python -m SimpleHTTPServer 80 &
              EOF
}
