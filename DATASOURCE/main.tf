
data "aws_ami" "myapp_ami" {
    most_recent = true
    owners = ["amazon"]

    filter {
        name = "name"
        values = ["amzn2-ami-hvm*"]
    }
  
}

resource "aws_instance" "mohammad_instance" {
  ami = data.aws_ami.myapp_ami.id
  instance_type = "t2.micro"
}

/*resource "aws_instance" "firstdemo" {

  ami           = "ami-922914f7"

  instance_type = "t2.micro"



  tags {

    Name = "demoinstance"

  }

}*/