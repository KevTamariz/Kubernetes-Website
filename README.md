# Kubernetes-Website

# Terraform - Infra
This are the resources created with Terraform

Infraestructure:
- APIs
  - Kubernetes Api
  - DNS Api
  - Compute Api
- IAM
  - Terraform
  - Cloud Build connetion
- VPC
  - Default VPC
  - Default Subnet
- Cloud DNS 
  - DNS Zone
    - app.ktamariz.ga
    - monitor.ktamariz.ga
    - dash.ktamariz.ga
- Kubernetes Cluster
  - Zonal Cluser
  - Nodes
  
 
 ![Infra-W8](https://user-images.githubusercontent.com/92232117/235318596-6c0f2b88-e6ef-4615-837c-dbae8d5f6a06.png)

 
# Kubernetes 
This are the components installed in the Kubernetes Cluster

 - Nginx Ingress Controller
 - Cluster Issuer (Cert-Manager)
 - My app helm chart
    - Deployment
    - Ingress
    - Service
 - Kube-prometheus-stack helm chart
 - Skooner helm chart
 - Blackboox
    - Probe
