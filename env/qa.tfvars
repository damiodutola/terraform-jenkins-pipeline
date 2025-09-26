# ---- Core ----
environment        = "qa"
project_name       = "acme-platform"
region             = "us-east-1"

# ---- Networking ----
vpc_cidr           = "10.20.0.0/16"
public_subnets     = ["10.20.1.0/24", "10.20.2.0/24"]
private_subnets    = ["10.20.11.0/24", "10.20.12.0/24"]

# ---- Compute ----
instance_type      = "t3.medium"
min_size           = 2
desired_capacity   = 2
max_size           = 4

# ---- Database (pre-prod sizing) ----
db_engine               = "postgres"
db_engine_version       = "15"
db_instance_class       = "db.t3.small"
db_allocated_storage_gb = 50
db_name                 = "acme_qa"
# db_username / db_password injected by Jenkins

# ---- Feature Flags ----
enable_alarms      = true
enable_backup      = true

# ---- Tags ----
tags = {
  Environment = "qa"
  Project     = "acme-platform"
  Owner       = "platform-team"
  CostCenter  = "cc-1002"
  key_name = "your-ec2-keypair-name"
  tag_name = "dev-jenkins"
}
