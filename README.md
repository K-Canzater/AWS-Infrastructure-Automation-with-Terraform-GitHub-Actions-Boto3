# ☁️ AWS Infrastructure Automation with Terraform, GitHub Actions & Boto3

This project builds and manages real AWS cloud infrastructure using **Terraform**, automates deployments with **GitHub Actions**, and performs infrastructure management using **Python + Boto3**.  
It reflects the workflow used in real cloud engineering roles — from Infrastructure as Code (IaC) to scripting and automation.

---

## 🚀 What This Project Does

✅ **Provision AWS infrastructure** using Terraform  
✅ **Trigger CI/CD pipeline** with GitHub Actions  
✅ **Manage resources** using Boto3 Python scripts  

---

## 🔧 Technologies Used

- **Terraform** — to build and manage AWS resources  
- **GitHub Actions** — for continuous deployment of infrastructure  
- **AWS** — VPC, EC2, S3, IAM, CloudWatch  
- **Python + Boto3** — to automate EC2 and S3 tasks  

---

## 🗂️ Infrastructure Setup (via Terraform)

- ✅ VPC with CIDR block  
- ✅ Public + private subnets  
- ✅ Route tables and internet gateway  
- ✅ EC2 instance with Security Group  
- ✅ S3 bucket  
- ✅ IAM User
- ✅ IAM Group
- ✅ IAM Role
- ✅ GitHub Actions workflow to deploy Terraform code

---

## ⚙️ Resource Management (via Boto3)

These Python scripts were written to interact with AWS resources using Boto3:

- `start_instance.py` – starts EC2 instance  
- `stop_instance.py` – stops EC2 instance  
- `describe_instance.py` – fetches instance state info  
- `list_objects.py` – lists objects inside the S3 bucket  
- `delete_objects.py` – deletes objects from the S3 bucket
 

---

## 💡 Why This Project Matters

This project simulates the day-to-day responsibilities of a **Cloud Infrastructure Engineer**, covering:

- ✅ Infrastructure provisioning (IaC)  
- ✅ CI/CD automation  
- ✅ Scripting for cloud resource management  
- ✅ Secure, repeatable, and scalable practices  

---

## 🔒 Security Note

All credentials and sensitive info are stored securely using GitHub Secrets. No keys or secrets are exposed in code or logs.

---

## ✨ Author

**Khayla Canzater**  
Cloud Infrastructure Engineer  
[LinkedIn](https://www.linkedin.com/in/khayla-canzater/) | [Portfolio](https://k-canzater.github.io/KCanzater/index.html) | [GitHub](https://github.com/K-Canzater)

