output "sns_topic" {
    value = "${aws_sns_topic.sns.arn}"
    description = "SNS Topic ARN"
}
