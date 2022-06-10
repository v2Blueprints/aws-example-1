resource "aws_kms_key" "cluster-key" {
  description             = "cluster-key"
  deletion_window_in_days = 10
  is_enabled = true
  enable_key_rotation = false
}

resource "aws_cloudwatch_log_group" "Dougs-cluster-logs" {
  name = "Dougs-cluster-logs"
}

resource "aws_ecs_cluster" "Dougs-Cluster" {
  name = "Dougs-Cluster"

 
}