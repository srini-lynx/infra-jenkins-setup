#https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/ssh_key
# Data Source for SSH-key
data "digitalocean_ssh_key" "example" {
  name = "example"
}

#https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet
#Creaet Digital Ocean Droplet

resource "digitalocean_droplet" "example" {
  image    = "ubuntu-18-04-x64"
  name     = "example-1"
  region   = "nyc2"
  size     = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.example.id]
}



