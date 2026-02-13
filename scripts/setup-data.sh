#!/bin/bash

echo "This is critical disaster recovery data created on: $(date)" > /home/ec2-user/critical_data.txt

cat /home/ec2-user/critical_data.txt
