# packer {
#   required_plugins {
#     amazon = {
#       version = ">= 0.0.2"
#       source  = "github.com/hashicorp/amazon"
#     }
#   }
# }
# variable "aws_key" {
#   type = string
#   default= "aws"
# }
# variable "aws_secret" {
#   type = string
#   default="aws"
# }
source "amazon-ebs" "test-1" {
  ami_name      = var.ami-name
  instance_type = "t2.micro"
  region        = "us-east-1"
  source_ami = var.source-ami
  ssh_username = "ubuntu"
  # aws_access_key_id = var.aws_key
  # aws_secret_access_key = var.aws_secret
}

build {
  name = "packer-test-1"
  sources = [
    "source.amazon-ebs.test-1"
  ]
  # provisioner "shell" {
  #   # destination="/tmp/aditya"
  #   # source="/Users/nsriaditya/Documents/enphase/jenkins-packer/QA/OPS-1234/"

  #   # inline=[
  #   # "echo 'sample scripts working' "
  #   # # "sudo update -y" ,
  #   # # "sudo install -y git"
  #   # ]
  #   script = "script.sh"

  #   }
    provisioner "file"{
      destination ="/tmp/aditya"
      source="/Users/nsriaditya/Documents/enphase/jenkins-packer/QA/OPS-1234/"
    } 
  
}
# "provisioners": [
# {
# "type": "shell",
# "inline": [
# "sudo yum update -y",
# "sudo yum install -y git"
# ]
# }
# ]
