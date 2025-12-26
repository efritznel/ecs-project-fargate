Project Task
Plan for today Deploy a web application as a container in an ECS Cluster

Pre-requisites
    - Remote backend to store our statefiles should already be created in our AWS account.
    - A docker image that contains our application in my DockerHub account 
        - Image name: efritznel/ithomelab-webpage:latest

Step 1. Create Network Infrastructure
    - VPC
    - 2 Private subnets 
    - 2 Public subnets
    - Internet Gateway
    - NAT Gateway
    - Route Table
    - Routes
    - Route table association
    - Security for ALB and ECS

Step 2
    - Create Loadbalancer, listener and target group in public subnets
    - The listener will forward http traffic on port 80 to the Target Group

Step 3
    - Create ECS cluster in private subnets
    - Create Task definition
    - Create Service to launch our tasks

Github-action for deployment

NB. if you have issue with the ALB it's related to the selected subnet go EC2-ALB-edit subnets - select the last AZ