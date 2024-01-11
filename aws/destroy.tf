resource "null_resource" "destroy_httpd" {
    depends_on = [ aws_instance.web ]
    provisioner "remote-exec" {
        inline=[
            "sudo apt-get remove -y nginx"
        ]
        connection {
          type = "ssh"
          user = "ubuntu"
          private_key = file("${path.module}/id_rsa.ppk")
        }
      
    }
  
}