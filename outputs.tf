output "bastion_private_key" {
  value     = tls_private_key.bastion_ssh_key.private_key_pem
  sensitive = true
}

output "bastion_public_key" {
  value = tls_private_key.bastion_ssh_key.public_key_openssh
}
