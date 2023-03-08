/*
 * @title   EPSI POC
 * @author  Taii Shayma
 * @version 1.0
 */


resource "exoscale_instance_pool" "epsi" {
  zone = var.zone
  name = "epsi-instance-pool"
  description = "epsi-instance-pool"
  template_id   = var.template_id
  instance_type = var.instance_type
  disk_size     = var.disk_size
  size          = var.np_size
  key_pair = var.ssh-key
  instance_prefix = var.prefix
  labels = var.labels
}

resource "local_file" "dynamic_nodes_inventory"{
  content = templatefile("./hosts.tpl",
    {
      intances_ips = exoscale_instance_pool.epsi.instances.*.name
    }
  )
  filename = "./dynamic_nodes_inventory"
}