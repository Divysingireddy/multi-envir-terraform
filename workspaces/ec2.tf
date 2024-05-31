resource "aws_instance" "web" {
  ami           = "ami-0f3c7d07486cad139"
  vpc_security_group_ids = ["sg-0255bdcbf4cd9eea9"]
  instance_type = lookup(var.instance_type, terraform.workspace)
  
}
