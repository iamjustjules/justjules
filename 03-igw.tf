resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.app1.id

  tags = {
    Name = "igw"
    Service = "application1"
    Owner = "julien"
    Location = "RVA"
    Planet = "terra"
  }
}