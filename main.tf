resource "aws_secretsmanager_secret" "main" {
    count = var.create ? 1 : 0

    name_prefix             = var.secret_name
    recovery_window_in_days = var.recovery_window_in_days
    tags = var.default_tags
}
resource "aws_secretsmanager_secret_version" "main" {
    count = var.create ? 1 : 0

    secret_id = aws_secretsmanager_secret.main.0.id
    version_stages  = var.version_stages
    secret_string   = jsonencode(var.secret_string)

    lifecycle {
        ignore_changes = [ secret_string ]
    }
}