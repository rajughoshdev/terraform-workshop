resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "${var.flavor}"
}
