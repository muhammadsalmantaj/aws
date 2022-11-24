resource "aws_db_instance" "default" {
allocated_storage = 20
identifier = "dbinstance"
storage_type = "gp2"
engine = "mysql"
engine_version = "5.7"
instance_class = "db.m4.large"
db_name = "test"
username = "admin"
password = "Admin54132"
parameter_group_name = "default.mysql5.7"
skip_final_snapshot=true
multi_az=true
db_subnet_group_name = "${aws_db_subnet_group.db-subnet.name}"
}
 

resource "aws_db_subnet_group" "db-subnet" {
name = "db subnet group"
subnet_ids = ["${aws_subnet.private_1.id}", "${aws_subnet.private_2.id}"]
 
}
 