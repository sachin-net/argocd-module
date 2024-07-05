data "aws_eks_cluster" "cluster" {
  name = "test-eks-NjifgyBd"
}

data "aws_eks_cluster_auth" "cluster" {
  name = "test-eks-NjifgyBd"
}


data "external" "guestbook_status" {
  program = ["${path.module}/bin/get_app_status.sh"]
}