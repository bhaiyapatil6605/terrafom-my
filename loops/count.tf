provider "aws" {
    region = "sa-east-1"
}



resource "aws_instance" "instance" {
	count = "4"
	ami = "(ami-0e670eb768a5fc3d4)"
	instance_type ="t3.micro"
	key_name = "MUMBAI"
    tags = {
        Name = "my_instance"
    }
}
