provider "aws" {
  access_key = "AKIASRYPUS3KWPXKP4NJ"
  secret_key = "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"
  region     = "ap-south-1"
}



resource "aws_instance" "ap" {
ami="ami-069d9fecd19e7ed40"
instance_type="t2.micro"
tags={
Name="india1"
}
}



