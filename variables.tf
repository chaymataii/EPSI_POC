/*
 * @title   EPSI POC
 * @author  Taii Shayma
 * @version 1.0
 */


variable "zone" {
  type    = string
  default = "ch-dk-2"
}

variable "labels" {
  type = map

  default = {
    project = "epsi-paris"
    environment = "coaching"
  }
}

variable "prefix" {
  type    = string
  default = "epsi"
}

variable "instance_type" {
  type    = string
  default = "standard.medium"
}

variable "np_size" {
  description = "Number of nodes"
  type        = number
  default     = 3
}

variable "disk_size" {
  type        = number
  default     = 60
}

variable "ssh-key" {
  type    = string
  default = "ssh-key"
}

variable "template_id" {
  type    = string
  default = "c6a5e521-a510-4822-b95e-566aec824945"
}


