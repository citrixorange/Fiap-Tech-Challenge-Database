#Providing AWS Region Teste
provider "aws" {
  region = "us-east-1"
}

#Providing RD resource
resource "aws_db_instance" "tech_challenge_postgres_instance" {
  identifier           = "tech-challenge-postgres-db"
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "16.1"
  instance_class       = "db.t3.micro"
  db_name              = var.DB_NAME
  username             = var.DB_USER
  password             = var.DB_PASSWORD
  parameter_group_name = var.PARAM_GROUP_NAME
}
