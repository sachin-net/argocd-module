data "aws_eks_cluster" "cluster" {
  name = "test-eks-NjifgyBd"
}

data "aws_eks_cluster_auth" "cluster" {
  name = "test-eks-NjifgyBd"
}


data "external" "guestbook_status" {
  program = ["${path.module}/bin/get_app_status.sh"]
}

# Fetch the resource details of the guestbook application
# data "kubernetes_resource" "harness_gitops_agent" {
#   api_version = "argoproj.io/v1alpha1"
#   kind        = "Application"
#   metadata {
#     name      = "guestbook"
#     namespace = "argocd"  # Adjust the namespace if needed
#   }
# }