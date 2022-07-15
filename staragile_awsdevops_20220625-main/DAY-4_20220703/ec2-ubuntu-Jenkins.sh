#!/bin/bash 

# Launch EC2 Instance Of Ubuntu
aws ec2 run-instances \
    --image-id "ami-068257025f72f470d" \
    --instance-type "t2.micro" \
    --count 1 \
    --subnet-id "subnet-07d20353addcedaee" \
    --key-name "awskeys-mum" \
    --security-group-ids "sg-00d44bcb68a6539b5" \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=JenkinsTest},{Key=Type,Value=CI},{Key=ProjectName,Value=Techhevicky},{Key=Environment,Value=Dev}]' \
    --user-data file://jenkins.txt 