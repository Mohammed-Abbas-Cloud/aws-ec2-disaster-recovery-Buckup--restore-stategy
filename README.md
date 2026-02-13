# AWS EC2 Disaster Recovery: Backup & Restore Strategy

## 📌 Project Overview
This project demonstrates a fundamental Disaster Recovery (DR) strategy on AWS by creating a "Golden Image" (AMI) from an EC2 instance and restoring it to recover data.

Key Concepts: EC2, AMI, Snapshots, Disaster Recovery, RPO/RTO.

## ⚙️ Architecture / Workflow
1.  Source: Launch an EC2 instance (Amazon Linux 2023).
2.  Data Simulation: Create a critical file inside the server.
3.  Backup: Create an Amazon Machine Image (AMI) to capture the state.
4.  Disaster: Terminate or simulate loss of the original server.
5.  Recovery: Launch a new instance from the custom AMI.
6.  Verification: Confirm the critical file exists in the new server.

## 🛠️ Implementation Steps

### Step 1: Initialize Original Server
- Launched a t2.micro instance.
- Connected via SSH/Instance Connect.
- Created dummy data using the script in scripts/setup_data.sh.

### Step 2: Create Backup (AMI)
- Selected the instance and created an Image (No reboot for production simulation).
- AMI ID: ami-xxxxxxxxx (Optional: put your ID here).

### Step 3: Restore & Verify
- Launched a new instance from the created AMI.
- Verified data persistence:

`bash
ls -l /home/ec2-user/
cat /home/ec2-user/critical_data.txt
