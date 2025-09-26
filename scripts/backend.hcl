
# S3 bucket holding state files
bucket               = "my-dev-tf-state-dami2-bucket"          # <-- change to your bucket
region               = "us-east-1"                    # <-- align with your AWS region
key                  = "global/terraform.tfstate"     # base key; real path is prefixed per workspace
workspace_key_prefix = "env"                          # final state path: env/<workspace>/global/terraform.tfstate

# State locking
dynamodb_table       = "terraform-state-locks"        # <-- create this table with primary key "LockID" (String)
encrypt              = true
acl                  = "bucket-owner-full-control"
