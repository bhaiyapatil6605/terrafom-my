provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "instance" {
  ami                 = "ami-03f4878755434977f"
  availability_zone   = "ap-south-1a"  # Specify a valid availability zone within the chosen region
  instance_type       = "t2.micro"
  key_name            = "MUMBAI"
  
  tags = {
    Name = "facebook"
  }
}