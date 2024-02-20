
resource "aws_instance" "user_data_example_input_file" {
  ami           = "ami-0a23a9827c6dab833"
  instance_type = "t3.nano"

  # Security group assign to instance
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  # key name
  key_name = "sandbox"
  user_data = "${file("apache_config.sh")}"

  tags = {
    Name = "Ec2-User-data-with-file"
  }
}
