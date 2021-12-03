resource "aws_iam_role" "cluster" {
  count = var.manage_cluster_iam_resources && var.create_eks ? 1 : 0

  name_prefix           = var.cluster_iam_role_name != "" ? null : var.cluster_name
  name                  = var.cluster_iam_role_name != "" ? var.cluster_iam_role_name : null
  assume_role_policy    = data.aws_iam_policy_document.cluster_assume_role_policy.json
  permissions_boundary  = var.permissions_boundary
  path                  = var.iam_path
  force_detach_policies = true

  tags = var.tags
}

output "cluster_iam_role_arn" {
  value = aws_iam_role.cluster.*.arn
}
