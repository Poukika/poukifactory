variable "application_key" {
  type      = string
  nullable  = false
  sensitive = true
}

variable "application_secret" {
  type      = string
  nullable  = false
  sensitive = true
}

variable "consumer_key" {
  type      = string
  nullable  = false
  sensitive = true
}

variable "service_name" {
  type      = string
  nullable  = false
  sensitive = true
}

variable "endpoint" {
  type     = string
  nullable = false
  default  = "ovh-eu"
}

variable "flavor" {
  type     = string
  nullable = false
  default  = "b3-8"
}

variable "region" {
  type     = string
  nullable = false
  default  = "GRA11"
}