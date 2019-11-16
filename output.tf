output "sns_topic" {
    value = [for v in aws_sns_topic.sns : v.id]
    description = "SNS Topic ARN"
}
