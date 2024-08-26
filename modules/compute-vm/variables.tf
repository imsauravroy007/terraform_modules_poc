variable "project_id" {
  type = string
  }

variable "instance_name" {
  type = string

}

variable "region" {
  default = "us-east1"
}

variable "zone" {
  default = "us-east-c"
}

variable "vpcid" {
  type = string
}

variable "subnetworkid" {
  type = string
}

variable "ssh" {
  type = string
}