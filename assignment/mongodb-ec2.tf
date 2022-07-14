resource "aws_instance" "" {
  ami           = "ami-08935252a36e25f85"
  instance_type = "t3.large"

  network_interface {
    network_interface_id = var.network_interface_id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}

