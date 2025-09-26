# ---- Core ----
environment        = "prod"
project_name       = "acme-platform"
region             = "us-east-1"

# ---- Networking ----
vpc_cidr           = "10.30.0.0/16"
public_subnets     = ["10.30.1.0/24", "10.30.2.0/24", "10.30.3.0/24"]
private_subnets    = ["10.30.11.0/24", "10.30.12.0/24", "10.30.13.0/24"]

# ---- Compute ----
instance_type      = "t3.large"
min_size           = 3
desired_capacity   = 4
max_size           = 8

# ---- Database (production sizing) ----
db_engine               = "postgres"
db_engine_version       = "15"
db_instance_class       = "db.t3.medium"
db_allocated_storage_gb = 100
db_name                 = "acme_prod"
# db_username / db_password injected by Jenkins

# ---- Feature Flags ----
enable_alarms      = true
enable_backup      = true

# ---- Tags ----
tags = {
  Environment = "prod"
  Project     = "acme-platform"
  Owner       = "platform-team"
  CostCenter  = "cc-1999"
  Confidentiality = "internal"
  key_name = "your-ec2-keypair-name"
  tag_name = "dev-jenkins"
}
