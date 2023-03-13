# create mysql rds instance

resource "aws_db_instance" "demo-mysql-db" {
    identifier           = "mysqldatabase"
    storage_type         = "gp2"
    allocated_storage    = 20
    engine               = "mysql"
    engine_version       = "8.0.28"
    instance_class       = "db.t2.micro"
    port                 = "3306" # optional
    # db_subnet_group_name = "default-vpc-07bdcc98225bf6714" # db isnatnce subnet group
    db_name                = "myDemoDB"
    username             = var.username
    password             = var.password
    parameter_group_name = "default.mysql8.0" # optional
    availability_zone    = "ap-south-1a" # optional
    publicly_accessible  = true
    deletion_protection  = false # optional and default value is false.
    skip_final_snapshot  = true # if false then it will create snapshot.

    tags = {
        Name             = "Demo MYSQl RDS Instance"
    }
} 