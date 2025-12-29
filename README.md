Project Highlight: Highly Available ECS Architecture with Terraform & GitHub Actions

![Project Image](https://github.com/efritznel/ecs-project-fargate/blob/main/ecs-project-image.png)

Project Task

I have designed and deployed a secure, scalable, and production-ready containerized web application on AWS. The solution had to follow best practices for networking, isolation, and automation, while supporting continuous deployment and infrastructure consistency.

Pre-requisites

    - Remote backend to store our statefiles should already be created in our AWS account.
    
    - A docker image that contains our application in my DockerHub account 
    
        - Image name: efritznel/ithomelab-webpage:latest

Step 1. Networking
    
    - VPC
    
    - 2 Private subnets 
    
    - 2 Public subnets
    
    - Internet Gateway
    
    - Public IP
    
    - NAT Gateway
    
    - Route Table
    
    - Public route table, route to IGW, public subnets association
    
    - Private route table, route to NGW, private subnets association
    
Step 2. Security Group

    - Sg for external alb all traffic on port 80 from internet

    - Sg for ECS cluster all traffic on port 80 from alb

Step 3. Load Balancer

    - Create Loadbalancer, listener and target group in public subnets
    
    - The listener will forward http traffic on port 80 to the Target Group

Step 4. ECS Cluster

    - Create ECS cluster in private subnets
    
    - Create Task definition
    
    - Create Service to launch our tasks

Github-action for deployment

NB. if you have issue with the ALB it's related to the selected subnet go EC2-ALB-edit subnets - select the last AZ
