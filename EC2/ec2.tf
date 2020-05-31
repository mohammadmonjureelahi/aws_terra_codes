resource "aws_instance" "MyFirstEc2instance_from_terraform" {
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  tags = {
      Name = "EC2started_from_console_from_terraform"
  }
  key_name = "aws_terra_key_pair"
  user_data = <<-EOF
                #!/bin/bash
                yum update -y
                yum install -y httpd
                systemctl start httpd.service
                systemctl enable httpd.service
                echo "Hi Friend , I am $(hostname -f) hosted by Terraform" > /var/www/html/index.html
                EOF
}
