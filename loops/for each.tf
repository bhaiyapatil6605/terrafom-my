provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "my_instance" {
    for_each = toset(var.ami_id)
    ami = each.value
    instance_type = "t2.micro"
    key_name = "MUMBAI"
    tags = {
        Name = "for_each"
    }
}

variable "ami_id" {
   default = ["ami-0e670eb768a5fc3d4","ami-05a5bb48beb785bf1","ami-059aa0510020f477b", "ami-03f4878755434977f"] 
}

output "aws_insta_pub_ip" {
  
	value = [
 		for ami in var.ami_id :
    
}
