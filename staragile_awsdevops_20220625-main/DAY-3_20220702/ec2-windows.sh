#!/bin/bash 

# Launch EC2 Instance Of AmazonLinux
aws ec2 run-instances \
    --image-id "ami-0a5b0c3ca9452f414" \
    --instance-type t2.micro \
    --count 1 \
    --subnet-id "subnet-5183ac39" \
    --key-name "awskeys-mum" \
    --security-group-ids "sg-0aa1782637f5f7dd9" \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Windows}]'
    #--user-data file://win-webserver.txt 
