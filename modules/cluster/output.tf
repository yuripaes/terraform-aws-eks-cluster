output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.id
}

output "oidc" {
  value = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

output "endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "certificate_authority" {
  value = aws_eks_cluster.eks_cluster.certificate_authority
}