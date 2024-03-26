# IGW
resource "aws_internet_gateway" "poukifactory_igw" {
  vpc_id = aws_vpc.poukifactory_vpc.id

  tags = {
    Name = "poukifactory-igw"
  }

  depends_on = [aws_vpc.poukifactory_vpc]
}

# Route table
resource "aws_default_route_table" "poukifactory_rtb" {
  default_route_table_id = aws_vpc.poukifactory_vpc.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.poukifactory_igw.id
  }


  tags = {
    Name = "poukifactory-public-routetable"
  }
}
