# providers.tf for Terraform Configuration

# Define the required Terraform provider(s) for this configuration.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"  # Specify the source of the AWS provider plugin.
    }
  }
}

# Configure the AWS Provider with the desired AWS region.
provider "aws" {
  region = "eu-central-1"  # Set the AWS region to "eu-central-1" (you can change this to your preferred region).
}
