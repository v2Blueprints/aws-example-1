resource "aws_kms_key" "cluster-key" {
  description             = "cluster-key"
  deletion_window_in_days = 10
}

resource "aws_cloudwatch_log_group" "Dougs-cluster-logs" {
  name = "Dougs-cluster-logs"
}

resource "aws_ecs_cluster" "Dougs-Cluster" {
  name = "Dougs-Cluster"

  configuration {
    execute_command_configuration {
      kms_key_id = aws_kms_key.cluster-key.arn
      logging    = "OVERRIDE"

      log_configuration {
        cloud_watch_encryption_enabled = true
        cloud_watch_log_group_name     = aws_cloudwatch_log_group.Dougs-cluster-logs.name
      }
    }
  }
}