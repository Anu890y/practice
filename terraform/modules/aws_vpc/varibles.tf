#variable declartion

   variable "vpc_cidr_block" {
    description = "cidr block for vpc"
    type = string
    default = "10.0.0.0/21"
     
   }
#public subnets
   variable "public1a_subnets_cidr" {
    description = "cidr block for public1a subnets"
    type = string 
    default = "10.0.0.0/24"

   }
    variable "public1b_subnets_cidr" {
    description = "cidr block for public1b subnets"
    type = string 
    default = "10.0.0.0/24"
   }
#private subnets
    variable "private2a_subnets_cidr" {
    description = "cidr block for private2a subnets"
    type = string 
    default = "10.0.0.0/24"
        
   }
   variable "private2b_subnets_cidr" {
    description = "cidr block for private2b subnets"
    type = string 
    default = "10.0.0.0/24"
        
   }

   #availability_zones

   variable "region" {
    description = "region"
    type = string 
    default = "us-east-1"
   }