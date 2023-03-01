variable  "test" {
  default = {
    "catalogue" = {
      "private_ip" = "172.31.2.20"
    }
    "user" = {
      "private_ip" = "172.31.10.9"
    }
  }
}

output "test" {
  value = var.test
}