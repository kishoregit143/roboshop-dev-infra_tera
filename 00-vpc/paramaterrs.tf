resource "aws_ssm_parameter" "sg_id" {
#   count = length(var.sg_names)
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}