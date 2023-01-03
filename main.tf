terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  #instance_type = "t2.micro"
  instance_type = "t2.medium"
  cpu_core_count = 2
  cpu_threads_per_core = 5
  tags = {
    Name = "ExampleAppServerInstance",
    ApplicationEnv = "aaa",
    Environment = "bbb"
  }
}
#
