output "cert_manager_status" {
  value = helm_release.cert_manager.status
}

output "nginx_ingress_status" {
  value = helm_release.nginx_ingress.status
}
