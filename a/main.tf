
resource "random_password" "generated_password" {
 length           = 8
 special          = true
 override_special = "!%^&*()-_=+[]{}|;:,.<>?/`~"
 upper = true
 lower = true

}
output "message" {
 value = "Hi ${var.user_name}, your password is ${random_password.generated_password.result}"
 sensitive=true
}