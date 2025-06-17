# Bastion EC2 in Public Subnet
resource "aws_instance" "bastion" {
  ami                    = "ami-0c02fb55956c7d316" # Amazon Linux 2 (اختيار حسب المنطقة)
  instance_type          = var.instance_type       #"t2.micro"
  subnet_id              = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name               = aws_key_pair.bastion_key.key_name

  tags = {
    Name = "Bastion-Host"
  }
}

# App EC2 in Private Subnet
resource "aws_instance" "app" {
  ami                    = var.ami           #"ami-0c02fb55956c7d316"
  instance_type          = var.instance_type #"t2.micro"
  subnet_id              = aws_subnet.private_subnet_1.id
  vpc_security_group_ids = [aws_security_group.app_sg.id]
  key_name               = aws_key_pair.bastion_key.key_name

  tags = {
    Name = "App-Instance"
  }
}

