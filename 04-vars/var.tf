variable "sample" {
  default = "Hello world"
}

output "sample" {
  value = var.sample
}

variable "sample1" {}


output "sample1"{
 value = var.sample1
}

variable "cli" {}

  output "cli" {
    value = var.cli
}

variable "Input"{}

variable "sample5" {
  default = "Hello"
}

variable "sample6" {
  default =  [
    "Hello",
    1000,
    true,
    "World"
  ]
}

variable "sample7" {
  default =  {
    string = "Hello",
    number = 100,
    boolean = true
  }
}

