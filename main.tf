resource "random_pet" "main" {
  prefix = var.prefix
  length = var.length
}

resource "tls_private_key" "main" {
  algorithm = "RSA"
}
