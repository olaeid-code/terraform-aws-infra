
#Create AWS Secret Manager
resource "aws_secretsmanager_secret" "bastion_key" {
  name                    = "bastion-ssh-key"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "bastion_key_version" {
  secret_id = aws_secretsmanager_secret.bastion_key.id
  secret_string = jsonencode({
    private_key = tls_private_key.bastion_ssh_key.private_key_pem
    public_key  = tls_private_key.bastion_ssh_key.public_key_openssh
  })
}
