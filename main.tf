provider "aws" {
  region = "{var.region}"
  version = "~> 2.7"
}

locals {
  sns-topics = var.sns_topics
}

#Create SNS
resource "aws_sns_topic" "sns" {
  for_each  = local.sns_topics
  name      = "${each.key}"
  tags = {
    Name = "${each.key}"
  }
}

#Create subscription
resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  for_each  = local.sns_topics
  topic_arn = "${aws_sns_topic.sns["${each.key}"].arn}"
  protocol  = lookup(each.value, "protocol", null)
  endpoint  = lookup(each.value, "endpoint", null)
}
