resource "aws_instance" "MyFirstEc2instance_from_terraform-EIP_demo" {
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  tags = {
      Name = "EMyFirstEc2instance_from_terraform-EIP_demo"
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
