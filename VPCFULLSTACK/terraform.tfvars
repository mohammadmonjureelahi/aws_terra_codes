# Project wide variable
PROJECT_NAME                          = "demolab"

# Varibles for the Providers
AWS_ACCESS_KEY                        = ""
AWS_SECRET_KEY                        = ""
AWS_REGION                            = "us-east-1"

# RDS variable
RDS_CIDR                              = "0.0.0.0/0"
DB_INSTANCE_CLASS                     = "db.t2.micro"
RDS_ENGINE                            = "mysql"
ENGINE_VERSION                        = "5.7.17"
BACKUP_RETENTION_PERIOD               = "7"
PUBLICLY_ACCESSIBLE                   = "true"
RDS_USERNAME                          = "test"
RDS_PASSWORD                          = "test123#$"
RDS_ALLOCATED_STORAGE                 = "20"

# Ec2 Variables
SSH_CIDR_WEB_SERVER                   = "0.0.0.0/0"
SSH_CIDR_APP_SERVER                   = "0.0.0.0/0"
WEB_SERVER_INSTANCE_TYPE              = "t2.micro"
APP_SERVER_INSTANCE_TYPE              = "t2.micro"
USER_DATA_FOR_WEBSERVER               = "./demo_code/web.sh"
USER_DATA_FOR_APPSERVER               = "./demo_code/app.sh"
PEM_FILE_APPSERVERS                   = "aws_terra_key_pair"
PEM_FILE_WEBSERVERS                   = "aws_terra_key_pair"

# VPC Variables
VPC_CIDR_BLOCK                        = "10.0.0.0/16"
VPC_PUBLIC_SUBNET1_CIDR_BLOCK         = "10.0.1.0/24"
VPC_PUBLIC_SUBNET2_CIDR_BLOCK         = "10.0.2.0/24"
VPC_PRIVATE_SUBNET1_CIDR_BLOCK        = "10.0.3.0/24"
VPC_PRIVATE_SUBNET2_CIDR_BLOCK        = "10.0.4.0/24"
/*VPC_ID                                = "vpc-0205e3da6ce925585"
RDS_SUBNET_ID1                        = "subnet-09f83e10f0286d2aa"
RDS_SUBNET_ID2                        = "subnet-041fa853f229c701b"
PRIVATE_SUBNET_ID1                    = "subnet-09f83e10f0286d2aa"  
PRIVATE_SUBNET_ID2                    = "subnet-041fa853f229c701b"
PUBLIC_SUBNET_ID1                     = "subnet-08d6990a78ff870a7"
PUBLIC_SUBNET_ID2                     = "subnet-029ef8fd4e48061d6" */
