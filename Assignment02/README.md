# kakao-mobility

</br>

## <strong style="color: rgb(252, 186, 3);">Second of Assignment</strong>

---

I deploy a web container to a Kubernetes environment using **"kind"** in my local environment.

</br>

### <strong style="color: rgb(252, 186, 3);">Process</strong>

</br>

**[Excute Environments]**  
Ubuntu 20.04.1 LTS  
Node Version 10.16.3  
NPM Version 7.6.0  
Docker Version 19.03.8  
Kubernetes Client Version v1.21.2  
Kind Version 0.8.1

</br>

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
# Set up a local Kubernetes cluster
## 1. Grant execution permission
chmod +x scripts/kind-with-registry.sh

## 2. Run the cluster using the local registry
scripts/kind-with-registry.sh



# Create and upload docker images
# 1. Build image
docker build -t localhost:5000/assignment:1.0.0 -f ./Dockerfile.prod .

# 2. Excute container(Options)
docker run -p 8080:8080 --name web-service localhost:5000/assignment:1.0.0

# 3. Upload image
docker push localhost:5000/assignment:1.0.0



# Deploy to Kubernetes
## 1. You can stop containers all at once using
docker stop $(docker ps -a -q)

## 2. Deploy the nginx docker container and run ia as a process on the cluster
kubectl apply -f manifests/5_deploy_using_local_registry.yaml

## 3. Confirm the pod is running
kubectl get pods
kubectl logs "name of pods"

## 4. Expose the service
kubectl apply -f manifests/6_service_using_local_registry.yaml

## 5. Confirm the service is running
kubectl get services

## 6. set it in a browser(http://localhost)

## 7. Clean up new cluster
kind delete cluster --name mycluster
```

</br>

**3. Build**

```bash
# Grant execution permission
chmod +x scripts/build.sh

# excute
scripts/build.sh
```

</br>

**4. Deploy**

```bash
# Grant execution permission
chmod +x scripts/deploy.sh

# excute
scripts/deploy.sh
```

</br>

### <strong style="color: rgb(252, 186, 3);">Reference</strong>

[Tutorial: Deploy Your First Kubernetes Cluster](https://www.appvia.io/blog/tutorial-deploy-kubernetes-cluster#174e18c2-f22e-49fc-b5f3-2ffd2acc489e)

[https://twofootdog.tistory.com/73](https://twofootdog.tistory.com/73)

[kind](https://kind.sigs.k8s.io/)

[Your Intro Guide to Kubernetes](https://www.appvia.io/blog/intro-guide-to-kubernetes)

[AWS EKS에서 CodePipeline을 활용한 스프링부트 서비스 배포](https://twofootdog.tistory.com/73)
