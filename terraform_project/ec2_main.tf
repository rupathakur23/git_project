provider "aws" {
    region = "us-east-1"
  
}
resource "ec2_instance" "myec2" {
    ami =  "ami-0360c520857e3138f"
    instance_type = "t2.micro"

    tags = {
        Name = "myec2_server"
        owner ="devops"
    }
  
}