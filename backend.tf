terraform {
  backend "s3" {
    key            = "terraform/tfstate.tfstate"
    bucket         = "my-tf-bucket-ms6"
    encrypt        = true
    region         = "us-east-1"
    dynamodb_table = "db-lock-table"
  }
}

# Setting up s3 state file lock using Dyanamodb table
# Below steps are for sandbox environment that get periodically destroyed and the state file no longer applies
# 1. manually create the s3 bucket and dynamodb table; use the names indicated above in backend.tf file; it helps to change the name of the bucket each time
# 2. delete local terraform plugin files
# 3. aws configure; provide latest credentials
# 4. terraform init, plan, apply --auto-approve
