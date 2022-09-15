resource "aws_route_table" "tf_route" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/24"
    gateway_id = aws_internet_gateway.terraform-igw.id
  }
}

resource "aws_route_table_association" "tf_routeassoc" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.tf_route.id
}