
data "aws_availability_zones" "available" {
  
}


data "aws_ami" "myapp_ami" {
    most_recent = true
    owners = ["amazon"]

    filter {
        name = "name"
        values = ["amzn2-ami-hvm*"]
    }
  
}

resource "aws_instance" "mohammad_instance" {
  count = 2
  ami = data.aws_ami.myapp_ami.id
  instance_type = lookup(var.instancetype,var.environment)
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "threeinstancedemo-${count.index}"
  }
}

/*resource "aws_instance" "firstdemo" {

  ami           = "ami-922914f7"

  instance_type = "t2.micro"



  tags {

    Name = "demoinstance"

  }

}*/
