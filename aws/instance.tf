resource "aws_instance" "web" {
  ami                    = var.image_id
  instance_type          = var.itype
  key_name               = "${aws_key_pair.key-tf.key_name}"
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]

  tags = {
    name = "${var.instance_name}-${random_string.suffix.result}"
  }
    provisioner "remote-exec" {
        script = "./script.sh"
    connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("${path.module}/id_rsa.ppk")
    host        = self.public_ip
  }
    }
    provisioner "local-exec" {
      command = "curl -o index.html http://localhost"
    }
    lifecycle {
      create_before_destroy=true
    }
}




