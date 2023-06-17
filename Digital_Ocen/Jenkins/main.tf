############ https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/ssh_key################
################ Data Source for SSH-key
data "digitalocean_ssh_key" "jenkins-infra" {
  name = "dev-node039"
}

########### https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet###################
##########  Creaet Digital Ocean Droplet

resource "digitalocean_droplet" "jenkins-infra" {
  image    = var.image 
  name     = var.server_name 
  region   = var.server_region 
  size     = var.image_size 
  ssh_keys = [data.digitalocean_ssh_key.jenkins-infra.id]
}
