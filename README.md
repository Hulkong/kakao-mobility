# kakao-mobility

</br></br>

## <strong style="color: rgb(252, 186, 3);">First of Assignment</strong>

---

Aside from RDB, S3, etc, I focused entirely on building a Kubernetes environment.

</br>

### <strong style="color: rgb(252, 186, 3);">Public Cloud</strong>

AWS

</br>

### <strong style="color: rgb(252, 186, 3);">Resource</strong>

IAM  
VPC  
Rout53  
ALB  
EKS

</br>

### <strong style="color: rgb(252, 186, 3);">Process</strong>

**1. Create AWS Account**  
**2. Set MFA**  
**3. Add user**  
**4. Grant a role**  
**5. Setting Environment of DEV**  
**6. AWS Configure**  
**7. Terraform apply**

</br>

### <strong style="color: rgb(252, 186, 3);">Reference</strong>

[A vagrant project with an ubuntu box with the tools needed to do DevOps](https://github.com/Finfra/terraform_quickstart)

[Setting up AWS EKS (Hosted Kubernetes)](https://github.com/Finfra/terraform-course/tree/master/c1-EKS)

[Auto Deploymemnt of EKS Infrastructure on AWS with Terraform](https://github.com/reddypidugu/aws)

[Provision an EKS Cluster (AWS)](https://learn.hashicorp.com/tutorials/terraform/eks)

</br></br>

## <strong style="color: rgb(252, 186, 3);">Second of Assignment</strong>

---

I focused on deploying to EKS, a managed Kubernetes service.

</br>

### <strong style="color: rgb(252, 186, 3);">Process</strong>

**1. Source TEST**

```bash
# install package
npm install

# start to server
node index.js

# test
curl http://localhost:8080
```

</br>

**2. Unit TEST**

```bash
# Build image
docker build -t kakao-assignment -f .\Dockerfile.prod .

# Excute container
docker run -p 8080:8080 --name web-service kakao-assignment

# Deploy to Kubernetes
```

</br>

**3. Build TEST**

```bash
# Grant execution permission
chmod +x build.sh

# excute
./build.sh
```

</br>

**4. Deploy TEST**

```bash
# Grant execution permission
chmod +x deploy.sh

# excute
./deploy.sh
```

</br>

### <strong style="color: rgb(252, 186, 3);">Reference</strong>

[Tutorial: Deploy Your First Kubernetes Cluster](https://www.appvia.io/blog/tutorial-deploy-kubernetes-cluster#174e18c2-f22e-49fc-b5f3-2ffd2acc489e)

[https://twofootdog.tistory.com/73](https://twofootdog.tistory.com/73)
