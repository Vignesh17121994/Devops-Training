#!/bin/bash 

# Launch EC2 Instance Of Ubuntu
aws ec2 run-instances \
    --image-id "ami-068257025f72f470d" \
    --instance-type t2.micro \
    --count 1 \
    --subnet-id "subnet-5183ac39" \
    --key-name "awskeys-mum" \
    --security-group-ids "sg-0aa1782637f5f7dd9" \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Ubuntu},{Key=Type,Value=WebServer},{Key=ProjectName,Value=CloudBinary},{Key=Environment,Value=Dev}]' \
    --user-data file://mysql.txt 
 
 # https://dev.mysql.com/downloads/

 # https://dbeaver.io/download/

 # https://dev.mysql.com/downloads/workbench/