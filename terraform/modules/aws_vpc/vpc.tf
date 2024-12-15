#vcp / vpc
resource "aws_vpc" "main_vpc" {
  cidr_block =  var.vpc_cidr_block

  tags ={
    name ="main_vpc"
  }
}

#public subnets

resource "aws_subnet" "pub_subnet_1" {
    vpc_id = aws_vpc.main_vpc.id
    cidr_block = var.public1a_subnets_cidr
    availability_zone = "${var.region}a"
    
  }
resource "aws_subnet" "pub_subnet_2" {
    vpc_id = aws_vpc.main_vpc.id
    cidr_block = var.public1b_subnets_cidr
    availability_zone = "${var.region}b"
  }

  #private subnets
   resource "aws_subnet" "pvt_subnet_1" {
    vpc_id = aws_vpc.main_vpc.id
    cidr_block = var.private2a_subnets_cidr
    availability_zone = "${var.region}a"

}
   resource "aws_subnet" "pvt_subnet_2" {
     vpc_id = aws_vpc.main_vpc.id
     cidr_block = var.private2b_subnets_cidr
     
   }
#internet gateway
   resource "aws_internet_gateway" "internet" {
    vpc_id = aws_vpc.main_vpc.id

   tags = {
    Name = "main_igw"
  }
}


# nat gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_vpc.main_vpc.id
  subnet_id     = aws_vpc.main_vpc.id

  tags = {
    Name = "nat-gateway"
  }
}
