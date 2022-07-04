#!/bin/bash 

# Launch EC2 Instance Of AmazonLinux
aws ec2 run-instances \
    --image-id "ami-08df646e18b182346" \
    --instance-type t2.micro \
    --count 1 \
    --subnet-id "subnet-5183ac39" \
    --key-name "awskeys-mum" \
    --security-group-ids "sg-0aa1782637f5f7dd9" \
    --user-data file://hostname.txt \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Linux-Web-Amazon}]'