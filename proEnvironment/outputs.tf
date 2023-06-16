output "public_ip_address" {
  value = module.azure-webserver_Pro.The_webserver_Public_ip
}

output "Resource_Group_name" {
    value = module.azure-webserver_Pro.Resource_Group_name
}

output "environment" {
    value = module.azure-webserver_Pro.environment

}