variable "name" {
  type        = string
  description = "name to indicate project"
}

variable "project_id" {
  type        = string
  description = "name of the gcp project ( can be different for different environments )"
  default = "<project_id>"
}

variable "dimensions" {
  type        = map(string)
  description = "particular dimension for quota override"
  default = {
    region      = "us-central1",
    base_model  = "text-bison"
  }
}