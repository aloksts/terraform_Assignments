resource "aws_volume" "myvol" {
  size=8
  type="gp2"
  tags= {
    name="alok-${var.volume_name}"
  }
}