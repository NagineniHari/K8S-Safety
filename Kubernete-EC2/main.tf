resource "aws_instance" "kubernetes" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t2.micro"

  # need more space for terraform multiple repos and resource creation using bastion host or instance
  root_block_device {
    volume_size = 50
    volume_type = "gp3" # or "gp2", depending on your preference
  }
  user_data = file("workstation.sh")
  tags ={
      Name = "Kubernetes"
    }
}




