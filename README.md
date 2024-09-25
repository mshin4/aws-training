# aws-training
For adding new AWS resources

1. Create the S3 bucket and Dynamodb manually. 

S3 bucket 
  - Unique name 
  - Enable versioning 
  - Accept all defaults 

Dynamo db 
  - Table name 
  - Partition key id = LockID (as String and must be named exactly LockID) 

2. Terraform init, plan, apply 