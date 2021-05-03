provider "aws" {
	region = "us-east-1"

}

resource "aws_instance" "intro" {
	ami = "ami-048f6ed62451373d9"
	instace_type = "t2.micro"
	availability_zone = "us-east-1a"
	key_name = "ec2jenkins"
	vpc_security_group_id = ["sg-0de81a1c54abc5255"] 
	tags = {
		Name = "wahid-Instance"
	}
}
