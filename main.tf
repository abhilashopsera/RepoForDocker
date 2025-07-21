provider "kubernetes" {
  config_path = "~/.kube/config"
}
resource "kubernetes_deployment" "example" {
  metadata {
    name = "springboot-maven"
    labels = {
      app = "springboot-maven"
    }
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "springboot-docker"
      }
    }
    template {
      metadata {
        labels = {
          app = "springboot-docker"
        }
      }
      spec {
        container {
          name  = "springboot"
          image = "your-docker-image:tag"
          port {
            container_port = 8080
          }
        }
      }
    }
  }
}
