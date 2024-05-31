resource "aws_instance"  "expense" {
  for_each = var.instance_names
  ami = data.aws_ami.ami_id.id
  vpc_security_group_ids = ["sg-0255bdcbf4cd9eea9"]
  instance_type = each.value
  tags =merge(
    var.common_tags,
  
  {
       Name = "${each.key}"
       Module = "${each.key}"
       Environment = var.Environment
    }

  )
}
