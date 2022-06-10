resource "aws_ecs_task_definition" "doug_ecs_task_definitions" {
  family = "service"
  container_definitions = jsonencode([
    {
      name      = "abs"
      image     = "abs"
      cpu       = 10
      memory    = 512
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    },
    {
      name      = "billing-engine"
      image     = "billing-engine"
      cpu       = 10
      memory    = 256
      essential = true
      portMappings = [
        {
          containerPort = 443
          hostPort      = 443
        }
      ]
    },
    {
      name      = "longitude"
      image     = "longitude"
      cpu       = 10
      memory    = 256
      essential = true
      portMappings = [
        {
          containerPort = 443
          hostPort      = 443
        }
      ]
    },
    {
      name      = "sura"
      image     = "sura"
      cpu       = 10
      memory    = 256
      essential = true
      portMappings = [
        {
          containerPort = 443
          hostPort      = 443
        }
      ]
    },
    {
      name      = "opta"
      image     = "opta"
      cpu       = 10
      memory    = 256
      essential = true
      portMappings = [
        {
          containerPort = 443
          hostPort      = 443
        }
      ]
    }
  ])
  }