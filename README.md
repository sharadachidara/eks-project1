# eks-project1
# 🚀 Terraform Setup for Ingestion Cluster

This Terraform project sets up an **Amazon EKS Cluster** along with required **VPC, IAM roles, and networking resources**.

## **📂 Project Folder Structure**
```
📦 ingestion-cluster
 ├── 📂 modules
 │   ├── 📂 eks                # EKS Module
 │   │   ├── main.tf
 │   │   ├── variables.tf
 │   │   ├── outputs.tf
 │   ├── 📂 vpc                # VPC Module
 │   │   ├── main.tf
 │   │   ├── variables.tf
 │   │   ├── outputs.tf
 │   ├── 📂 iam                # IAM Roles Module
 │   │   ├── main.tf
 │   │   ├── variables.tf
 │   │   ├── outputs.tf
 ├── main.tf                   # Root Terraform Configuration
 ├── variables.tf               # Global Variables
 ├── outputs.tf                 # Outputs Definition
 ├── 📂 configs                 # Environment-Specific Configurations
 │   ├── dev.tfvars
 │   ├── staging.tfvars
 │   ├── prod.tfvars
 ├── README.md                  # Documentation (You are here)
```

## **🔹 Prerequisites**
Make sure you have the following installed:
- **Terraform v1.0+** → [Download](https://www.terraform.io/downloads)
- **AWS CLI** (configured with valid credentials) → [Setup Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- **kubectl** (for interacting with EKS) → [Install Guide](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

## **🚀 How to Use**

### **1️⃣ Initialize Terraform**
Run the following command to initialize Terraform:
```bash
terraform init
```
This will download necessary providers and modules.

### **2️⃣ Select the Environment Configuration**
To deploy in **development (dev), staging, or production**, use the respective `tfvars` file.

Example for **dev**:
```bash
terraform plan -var-file=configs/dev.tfvars
```
For **staging**:
```bash
terraform plan -var-file=configs/staging.tfvars
```
For **production**:
```bash
terraform plan -var-file=configs/prod.tfvars
```

### **3️⃣ Apply the Terraform Configuration**
To deploy the infrastructure, run:
```bash
terraform apply -var-file=configs/dev.tfvars -auto-approve
```
Replace `dev.tfvars` with `staging.tfvars` or `prod.tfvars` if deploying in another environment.

⏳ **Wait for Terraform to finish deploying resources.** Once done, Terraform will output important details like **EKS cluster name, VPC ID, and IAM roles**.

### **4️⃣ Configure `kubectl` for EKS**
Once the EKS cluster is created, configure **kubectl** to connect to the cluster:
```bash
aws eks update-kubeconfig --region <AWS_REGION> --name <EKS_CLUSTER_NAME>
```
Example:
```bash
aws eks update-kubeconfig --region us-east-1 --name ingestion-cluster
```
Now you can check the cluster status:
```bash
kubectl get nodes
```

### **5️⃣ Destroy the Infrastructure (If Needed)**
To delete all created AWS resources, run:
```bash
terraform destroy -var-file=configs/dev.tfvars -auto-approve
```
Make sure to replace `dev.tfvars` with the correct environment if destroying another setup.

## **✅ Summary of Terraform Commands**
| **Command** | **Description** |
|------------|----------------|
| `terraform init` | Initialize Terraform and download modules |
| `terraform plan -var-file=configs/dev.tfvars` | Preview changes before applying |
| `terraform apply -var-file=configs/dev.tfvars -auto-approve` | Deploy the infrastructure |
| `aws eks update-kubeconfig --region <region> --name <cluster>` | Connect kubectl to the EKS cluster |
| `terraform destroy -var-file=configs/dev.tfvars -auto-approve` | Destroy resources |

## **📌 Notes**
- The Terraform setup includes **IAM roles, EKS, and networking components**.
- Modify values in  `configs/{env}.tfvars` for environment-specific configurations.
- Ensure your AWS account has the necessary permissions before deploying.

🚀 **Now your Terraform EKS setup is ready!** If you need any modifications, update the **`tfvars`** files accordingly. Happy coding! 🎯

