resource "aws_ssm_parameter" "sg_id" {
#   count = length(var.sg_names)
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}
resource "aws_ssm_parameter" "public_subnet_id" {
#   count = length(var.sg_names)
  name  = "/${var.project_name}/${var.environment}/public_subnet_ids"
  type  = "StringList"
  value = join("," ,module.vpc.public_subnet_ids) #subnet-0cfe9deb4137e41ca,subnet-073ff1a4b98a1ca36
}

resource "aws_ssm_parameter" "private_subnet_id" {
#   count = length(var.sg_names)
  name  = "/${var.project_name}/${var.environment}/private_subnet_ids"
  type  = "StringList"
  value = join("," ,module.vpc.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_id" {
#   count = length(var.sg_names)
  name  = "/${var.project_name}/${var.environment}/database_subnet_ids"
  type  = "StringList"
  value = join("," ,module.vpc.database_subnet_ids)
}