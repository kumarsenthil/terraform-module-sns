variable "region" {
  type = string
  description = "Name of the region"
  default = "us-east-1"
}

variable "sns_topics" {
  description = "The map of map of SNS topic to create"
  type        = map(map(string))
}
