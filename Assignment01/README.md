# kakao-mobility

</br>

## <strong style="color: rgb(252, 186, 3);">First of Assignment</strong>

---

Aside from RDB, S3, etc, I focused entirely on building a Kubernetes environment.

</br>

### <strong style="color: rgb(252, 186, 3);">Public cloud used</strong>

AWS

</br>

### <strong style="color: rgb(252, 186, 3);">Resources Required for Infrastructure Configuration</strong>

```txt
# IAM
# VPC
# Rout53
# ALB
# EKS
```

</br>

### <strong style="color: rgb(252, 186, 3);">Infrastructure diagram</strong>

![Alt text](EKS_Infra.PNG "EKS-based infrastructure configuration diagram")

</br></br>

### <strong style="color: rgb(252, 186, 3);">Process</strong>

</br>

**[Excute Environments]**

```txt
# Terrafrom v1.0.1
# AWS Cli v1.18.69
# Kubernetes Client v1.21.2
# AWS-IAM-Authenticator v0.5.0
```

</br>

**[Precondition]**

```txt
1. Create AWS Account
2. Set MFA
3. Add user
4. Grant a role
5. Create AWS Access Key ID and Secret Access Key
6. AWS config settings
7. EKS environment setting with terraform(proceed from this part!!!)
```

</br>

**[Excluded service]**  
The following services have been excluded due to cost.

```txt
# NAT-Gateway
# Rout53
# ALB
# EKS
```

</br>

**[Description of terraform files]**

```txt
# versions.tf
Specifies the required provider version and required Terraform version

# vpc.tf
Provisions a VPC, subnets and availability zones.

# security-groups.tf
Provisions the security groups used by the EKS cluster.

# outputs.tf
Defines the output configuration.
```

</br>

**Terraform TEST**

```bash
# Initialize Terraform workspace
terraform init

# Provision
terraform apply

# Clean up workspace
terraform destroy
```

</br>

### <strong style="color: rgb(252, 186, 3);">Reference</strong>

[A vagrant project with an ubuntu box with the tools needed to do DevOps](https://github.com/Finfra/terraform_quickstart)

[Setting up AWS EKS (Hosted Kubernetes)](https://github.com/Finfra/terraform-course/tree/master/c1-EKS)

[Auto Deploymemnt of EKS Infrastructure on AWS with Terraform](https://github.com/reddypidugu/aws)

[Provision an EKS Cluster (AWS)](https://learn.hashicorp.com/tutorials/terraform/eks)

[Amazon Elastic Kubernetes Service (Amazon EKS) Architecture Explained with Diagram](https://www.devopsschool.com/blog/amazon-elastic-kubernetes-service-amazon-eks-architecture-explained-with-diagram/)

[Terraform 0.13으로 테라폼 코드 업그레이드하기](https://blog.outsider.ne.kr/1516)
