resource "linode_lke_cluster" "lke" {
  label       = "lke.tf"
  k8s_version = "1.23"
  region      = "us-central"
  tags        = ["lke", "terraform"]

  pool {
    type  = "g6-standard-2"
    count = 3
  }
}

resource "local_file" "lke_config" {
  depends_on      = [linode_lke_cluster.lke]
  content         = base64decode(linode_lke_cluster.lke.kubeconfig)
  filename        = var.lke_config
  file_permission = "0660"
}

