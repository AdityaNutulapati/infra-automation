data "aws_ami" "example" {
  # executable_users = ["self"]
  # most_recent      = true
  # name_regex       = "^myami-\\d{3}"
  # owners           = ["self"]
  filter {
    name   = "name"
    values = ["packer-success-test-12"]
  }
}
resource "aws_instance" "aditya_packer" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"
  tags = {
    Name = "OPS-1234"
  }
  
}