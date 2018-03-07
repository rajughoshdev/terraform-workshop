resource "aws_instance" "web" {
  ami           		= "${var.ami}"
  instance_type 		= "${var.flavor}"
  vpc_security_group_ids 	= ["${aws_security_group.web_allow_traffic.id}"]
  key_name			= "${aws_key_pair.web.key_name}"
}

resource "aws_key_pair" "web" {
  key_name   = "web-key"
  public_key = "${var.pub_key}"
}
