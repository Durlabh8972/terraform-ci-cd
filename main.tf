provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-051f7e7f6c2f40dc1" # Updated AMI
  instance_type = "t2.micro"
  count         = var.core_count

  tags = {
    Name = "ExampleInstance"
  }
}
