resource "aws_security_group" "app1-80-sg02-lb01" {
  name                  = "app1-80-sg02-lb01"
  description           = "app1-80-sg02-lb01"
  vpc_id                = aws_vpc.app1.id

  ingress {
    description         = "MyHomepage"
    from_port           = 80
    to_port             = 80
    protocol            = "tcp"
    cidr_blocks         = ["0.0.0.0/0"]
  }

  egress {
    from_port           = 0
    to_port             = 0
    protocol            = "-1"
    cidr_blocks         = ["0.0.0.0/0"]
  }

  tags = {
    Name                = "app1-sg02-lb01"
    Service             = "application1"
    Owner               = "julien"
    Location            = "RVA"
    Planet              = "terra"
    Author              = "Remo"
  }
}