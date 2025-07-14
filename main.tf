provider "aws" {
  region     = "ap-south-1a"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "aws_servers" {
  count         = 5
  ami           = "ami-04890fefece4fb64f"  # Amazon Linux 2
  instance_type = "t2.micro"
  key_name      = "git-lab"

  tags = {
    Name = "server-${count.index + 1}"
  }
}

