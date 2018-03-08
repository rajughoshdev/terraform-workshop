resource "aws_instance" "web" {
  ami           		= "${var.ami}"
  instance_type 		= "${var.flavor}"
  vpc_security_group_ids 	= ["${aws_security_group.web_allow_traffic.id}"]
}

