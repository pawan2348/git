provider "aws" {
  access_key = "AKIASRYPUS3KWPXKP4NJ"
  secret_key = "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"
  region     = "ap-south-1"
}

provider "aws" {
  access_key = "AKIASRYPUS3KWPXKP4NJ"
  secret_key = "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"
  region     = "us-east-1"
  alias="us"

}

resource "aws_instance" "ap" {
ami="ami-069d9fecd19e7ed40"
instance_type="t2.micro"
tags={
Name="india"
}
}

resource "aws_instance" "us" {
ami="ami-05723c3b9cf4bf4ff"
instance_type="t2.micro"
provider=aws.us
tags={
Name="US"
}
}

