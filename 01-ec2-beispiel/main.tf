terraform {
  #AWS Provider definieren
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  #Hier stimmt noch was nicht...
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-011899242bb902164" # Hier ebenfalls nicht...
  instance_type = "t2.micro"
  #subnetz fehlt...
  #beispiel:
  #subnet_id     = "subnet-0d326eb072c662c70" #Mit eurem Subnetz ersetzen
}
