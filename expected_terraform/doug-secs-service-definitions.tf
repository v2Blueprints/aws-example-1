resource "aws_ecs_service" "billing-engine" {
  name            = "billing-engine"
  cluster         = aws_ecs_cluster.Dougs-Cluster.id
  task_definition = aws_ecs_task_definition.billing-engine.arn
  desired_count   = 3
  iam_role        = aws_iam_role.foo.arn
  depends_on      = [aws_iam_role_policy.foo,aws_ecr_repository_policy.demo-repo-policy,aws_ecs_cluster.Dougs-Cluster,aws_ecs_task_definition.billing-engine_ecs_task_definition]

  ordered_placement_strategy {
    type  = "binpack"
    field = "cpu"
  }
  

  }
  
  resource "aws_ecs_service" "longitude" {
  name            = "longitude"
  cluster         = aws_ecs_cluster.Dougs-Cluster.id
  task_definition = aws_ecs_task_definition.longitude.arn
  desired_count   = 3
  iam_role        = aws_iam_role.foo.arn
  depends_on      = [aws_iam_role_policy.foo,aws_ecr_repository_policy.demo-repo-policy,aws_ecs_cluster.Dougs-Cluster,aws_ecs_task_definition.longitude_ecs_task_definition]

  ordered_placement_strategy {
    type  = "binpack"
    field = "cpu"
  }
  }
  
  resource "aws_ecs_service" "sura" {
  name            = "sura"
  cluster         = aws_ecs_cluster.Dougs-Cluster.id
  task_definition = aws_ecs_task_definition.sura.arn
  desired_count   = 3
  iam_role        = aws_iam_role.foo.arn
  depends_on      = [aws_iam_role_policy.foo,aws_ecr_repository_policy.demo-repo-policy,aws_ecs_cluster.Dougs-Cluster,aws_ecs_task_definition.sura_ecs_task_definition]

  ordered_placement_strategy {
    type  = "binpack"
    field = "cpu"
  }
  }
      resource "aws_ecs_service" "opta" {
  name            = "opta"
  cluster         = aws_ecs_cluster.Dougs-Cluster.id
  task_definition = aws_ecs_task_definition.opta.arn
  desired_count   = 3
  iam_role        = aws_iam_role.foo.arn
  depends_on      = [aws_iam_role_policy.foo,aws_ecr_repository_policy.demo-repo-policy,aws_ecs_cluster.Dougs-Cluster,aws_ecs_task_definition.opta_ecs_task_definition]

  ordered_placement_strategy {
    type  = "binpack"
    field = "cpu"
  }
  }
  
  