terraform { 
  backend "s3" { 
    key = "terraform/tfstate.tfstate" 
    bucket = "my-tf-bucket-ms" 
    region = "us-east-1" 
  } 
} 

# when placed in parent folder, error below occurs

# │ Error: Both a backend and Terraform Cloud configuration are present
# │ 
# │   on backend.tf line 2, in terraform:
# │    2:   backend "s3" { 
# │ 
# │ A module may declare either one 'cloud' block configuring Terraform Cloud OR one 'backend' block configuring a state backend. Terraform Cloud is configured at main.tf:2,3-8; a backend is configured
# │ at backend.tf:2,3-15. Remove the backend block to configure Terraform Cloud.