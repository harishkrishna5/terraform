terraform {
	required_providers {
	aws = {
		 source  = "hashicorp/aws"
 	         version = "5.69"
		}
	}	
}


provider "aws" {

	region = "ap-south-1"
}

variable "zones" {
	description="example of variables"
	type=string
}
variable "instance_type" {
        description="example of variables"
        type=string
}


resource "aws_instance" "example" {
	ami="ami-0dee22c13ea7a9a67"
	instance_type=var.instance_type
	availability_zone=var.zones
tags= {
name="instances123"
}
}



