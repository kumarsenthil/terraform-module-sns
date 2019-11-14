output "sns_topic" {
    value = "${aws_sns_topic.aws_sns_topic.arn}"
    description = "SNS Topic ARN"
}
