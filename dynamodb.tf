
##################################################################################################################

resource "aws_dynamodb_table" "project_sapphire_inventory" {
  name           = "inventory"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "AssetID"

  attribute {
    name = "AssetID"
    type = "N"
  }
  attribute {
    name = "AssetName"
    type = "S"
  }
  attribute {
    name = "age"
    type = "N"
  }
  attribute {
    name = "Hardware"
    type = "B"
  }
  global_secondary_index {
    name             = "AssetName"
    hash_key         = "AssetName"
    projection_type    = "ALL"

  }
  global_secondary_index {
    name             = "age"
    hash_key         = "age"
    projection_type    = "ALL"

  }
  global_secondary_index {
    name             = "Hardware"
    hash_key         = "Hardware"
    projection_type    = "ALL"

  }
}

resource "aws_dynamodb_table_item" "upload" {
  table_name = aws_dynamodb_table.project_sapphire_inventory.name
  hash_key   = aws_dynamodb_table.project_sapphire_inventory.hash_key
  item = <<EOF
 {
  "AssetID": {"N": "1"},
  "AssetName": {"S": "printer"},
  "age": {"N": "5"},
  "Hardware": {"B": "true" }
}
EOF
}


##################################################################################################################

# resource "aws_dynamodb_table" "test_table" {
#   name           = "test_table"
#   read_capacity  = 30
#   write_capacity = 30
#   billing_mode   = "PROVISIONED"
#   hash_key = "UserId"

#   attribute {
#     name = "UserId"
#     type = "S"
#   }
#   attribute {
#     name = "age"
#     type = "N"
#   }

#   global_secondary_index {
#     name             = "age"
#     hash_key         = "age"
#     projection_type    = "ALL"
#   }

# }

# resource "aws_dynamodb_table_item" "user_item" {
#   table_name = aws_dynamodb_table.test_table.name
#   hash_key   = aws_dynamodb_table.test_table.hash_key
#   item       = <<EOF
#  {
#   "UserId": {"S": "007"},
#   "age": {"N": "5"}
#  }
# EOF
# }

# data "aws_dynamodb_table" "test_table" {
#  name = "test_table"  # Specify the name of your DynamoDB table
# }

# resource "aws_dynamodb_table" "project_sapphire_user_data" {
#   name           = "userdata"
#   billing_mode   = "PAY_PER_REQUEST"
#   hash_key       = "UserId"

#   attribute {
#     name = "UserId"
#     type = "N"
#   }
# }


# resource "aws_dynamodb_table" "users" {
#  name = "UsersTable"
#  billing_mode = "PROVISIONED"
#  read_capacity = 10
#  write_capacity = 5

#  hash_key = "userId"
#  attribute {
#    name = "userId"
#    type = "S"  # String data type
#  }

#  tags = {
#    Name = "UsersTable"
#  }
# }

# data "aws_dynamodb_table" "users" {
#  name = "UsersTable"  # Specify the name of your DynamoDB table
# }

# data "aws_dynamodb_table_item" "user_item" {
#  table_name = data.aws_dynamodb_table.example_table.name
#  hash_key   = "UserId"
#  hash_value = "user123"  # Specify the hash key value of the item you want to retrieve
# }
