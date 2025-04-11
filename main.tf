# main.tf
provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "do-sfo3-checklist"
}

provider "helm" {
  kubernetes {
    config_path    = "~/.kube/config"
    config_context = "do-sfo3-checklist"
  }
}
