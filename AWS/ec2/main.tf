provider "aws" {
    access_key = "AKIA5JU3PFOKI4ECOO4C"
    secret_key = "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"
    region = "ap-southeast-1"
}

resource "aws_instance" "private-instance" {
  ami           = "ami-0f62d9254ca98e1aa"
  instance_type = "t3.nano"

  subnet_id = aws_subnet.dev-private-1.id

  #vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  #key_name = aws_key_pair.mykeypair.key_name
  
  tags = {
    Name = "private-instance"
  }
}