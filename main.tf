resource "aws_lightsail_instance" "custom" {
  name              = "joestar"
  availability_zone = "us-west-2a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"
#  key_pair_name     = "Josuke"
  tags = {
    Team       = "DevOps"
    env        = "dev"
    created_by = "terraform"
  }
}