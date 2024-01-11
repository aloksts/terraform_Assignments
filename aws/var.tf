variable "instance_name" {
    type = string
}
variable "volume_name" {
    type=string
}
variable "ports" {
    type = list(number)
}

variable "itype" {
    type=string
}
variable "access_key" {
    type = string
}
variable "secret_key" {
    type = string
}
variable "image_id" {
  type=string
}