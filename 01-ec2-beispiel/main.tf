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
  #Hier stimmt noch was nicht... -> jetzt schon
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c4c4bd6cf0c5fe52" # Hier ebenfalls nicht... -> erledigt
  instance_type = "t2.micro"
  subnet_id = "subnet-0b928299edbd4deb7"
  #subnetz fehlt...  -> nicht mehr
  #beispiel:
  #subnet_id     = "subnet-0d326eb072c662c70" #Mit eurem Subnetz ersetzen
}