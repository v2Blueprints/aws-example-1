resource "aws_ecs_task_definition" "abs_ecs_task_definition" {
      family = "service"
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
    }
    
    
resource "aws_ecs_task_definition" "billing-engine_ecs_task_definition" {  
      family = "service"
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
    }
    
resource "aws_ecs_task_definition" "longitude_ecs_task_definition" {
      family = "service"
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
    }

resource "aws_ecs_task_definition" "sura_ecs_task_definition"  {
      family = "service"
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
    }
    
resource "aws_ecs_task_definition" "opta_ecs_task_definition"     {
      family = "service"
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
  