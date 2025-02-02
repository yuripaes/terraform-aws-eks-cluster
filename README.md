# devops-terraform-eks
Terraform code to AWS EKS provisioning: Infrastructure, configuring networking, managed groups, IAM Policies, and deploy EKS

v1: May 2024: Course taken

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.48.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.13.2 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.30.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks_aws_load_balancer_controller"></a> [eks\_aws\_load\_balancer\_controller](#module\_eks\_aws\_load\_balancer\_controller) | ./modules/aws-load-balancer-controller | n/a |
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_eks_managed_node_group"></a> [eks\_managed\_node\_group](#module\_eks\_managed\_node\_group) | ./modules/managed-node-group | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Networking CIDR Block to be used in the VPC setting | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | It will compose the name resources (Name Tag) | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region used to create the resources | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be passed to each module creation | `map(any)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->