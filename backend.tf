terraform {
  backend "s3" {
    bucket         = "361103952612-terraform-states"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile   = true
    encrypt        = true
  }
}