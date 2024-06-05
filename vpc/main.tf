resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "private_subnet" {
  count = length(var.subnet_cidrs)

  vpc_id                 = aws_vpc.main.id
  cidr_block             = element(var.subnet_cidrs, count.index)
  availability_zone      = element(var.availability_zones, count.index)
  map_public_ip_on_launch = false
  tags = {
    Name = element(var.subnet_names, count.index)
  }
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.vpc_name}-private-rt"
  }
}

resource "aws_route_table_association" "private_rta" {
  count          = length(var.subnet_cidrs)
  subnet_id      = element(aws_subnet.private_subnet[*].id, count.index)
  route_table_id = aws_route_table.private_rt.id
}
