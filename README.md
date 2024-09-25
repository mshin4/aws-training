# aws-training
For adding new AWS resources

***S3 backends and State file locks in Terraform***
1. Create the S3 bucket and Dynamodb manually. 

S3 bucket 
  - Unique name 
  - Enable versioning 
  - Accept all defaults 

Dynamo db 
  - Table name 
  - Partition key id = LockID (as String and must be named exactly LockID) 

2. Terraform init, plan, apply 

File dependencies
- backend.tf
- main.tf
- variables.tf

***Other resources***

Files
- dynamodb.tf
- ec2.tf
- network.tf
- s3.tf

