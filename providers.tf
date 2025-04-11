resource "kubernetes_manifest" "namespace" {
  manifest = yamldecode(file("${path.module}/k8s/namespace.yaml"))
}

resource "kubernetes_manifest" "redis_deployment" {
  manifest = yamldecode(file("${path.module}/k8s/redis-deployment.yaml"))
}

resource "kubernetes_manifest" "redis_service" {
  manifest = yamldecode(file("${path.module}/k8s/redis-service.yaml"))
}

resource "kubernetes_manifest" "app_secret" {
  manifest = yamldecode(file("${path.module}/k8s/secret.yaml"))
  depends_on = [kubernetes_manifest.namespace]
}

resource "kubernetes_manifest" "checklist_deployment" {
  manifest = yamldecode(file("${path.module}/k8s/checklist-deployment.yaml"))
  depends_on = [kubernetes_manifest.namespace, kubernetes_manifest.app_secret]
}

resource "kubernetes_manifest" "checklist_service" {
  manifest = yamldecode(file("${path.module}/k8s/checklist-service.yaml"))
  depends_on = [kubernetes_manifest.checklist_deployment]
}
resource "kubernetes_manifest" "bullboard_deployment" {
  manifest = yamldecode(file("${path.module}/k8s/bullboard-deployment.yaml"))
}

resource "kubernetes_manifest" "bullboard_service" {
  manifest = yamldecode(file("${path.module}/k8s/bullboard-service.yaml"))
}
