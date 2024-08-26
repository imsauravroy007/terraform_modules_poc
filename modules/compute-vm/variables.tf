variable "project_id" {
  
  type = string
  default = "playground-s-11-e88dd218"
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