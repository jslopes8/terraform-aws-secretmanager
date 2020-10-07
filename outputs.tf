output "arn" {
    value = aws_secretsmanager_secret.main.0.arn
}
output "id" {
    value = aws_secretsmanager_secret.main.0.id
}