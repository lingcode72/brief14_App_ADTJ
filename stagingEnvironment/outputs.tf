

output "public_ip_address" {
  value = module.azure-webserver.The_webserver_Public_ip
}

output "The_websrever_Private_ip" {
    value = module.azure-webserver.The_websrever_Private_ip
}

output "The_subnet_ID" {
    value = module.azure-webserver.The_subnet_ID
}

output "The_vnet_ID" {
    value = module.azure-webserver.The_vnet_ID
}

output "resource_group_name" {
    value = module.azure-webserver.Resource_Group_name

}

output "environment" {
    value = module.azure-webserver.environment

}
