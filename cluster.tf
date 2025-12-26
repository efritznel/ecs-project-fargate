resource "aws_ecs_cluster" "ithomelab-ecs-cluster" {
  name = "devopsuncut-ecs-cluster"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}