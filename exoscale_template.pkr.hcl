/*
 * @title   EPSI POC
 * @author  Taii Shayma
 * @version 1.0
 */


#variable "exoscale_api_key" { default = "{{env `EXOSCALE_API_KEY`}}" }
#variable "exoscale_api_secret" { default = "{{env `EXOSCALE_API_SECRET`}}" }
#variable "exoscale_api_zone" { default = "{{env `EXOSCALE_ZONE`}}" }

variable "exoscale_api_key" { default = "EXOa498bb83e9c608c3c3e4935b" }
variable "exoscale_api_secret" { default = "as2iQeN8nNiFl7EC0vcjYpN8WAbIl_mpeDNhI0JO2p4" }
variable "exoscale_api_zone" { default = "ch-dk-2" }

source "exoscale" "epsi" {
  api_key                  = var.exoscale_api_key
  api_secret               = var.exoscale_api_secret
  instance_template        = "Linux Ubuntu 20.04 LTS 64-bit"
  instance_type = "small"
  template_zone            = var.exoscale_api_zone
  template_name            = "epsi-ubuntu"
  template_username        = "ubuntu"
  ssh_username             = "ubuntu"
}

build {
  sources = ["source.exoscale.epsi"]

  provisioner "shell" {
    execute_command = "chmod +x {{.Path}}; sudo {{.Path}}"
    scripts         = ["install_docker.sh"]
  }
}