variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "prefect_api_key" {
  description = "Prefect Cloud API Key"
  type        = string
  sensitive   = true
}
