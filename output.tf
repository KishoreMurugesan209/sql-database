output "database_id" {
    description = "The ID of the SQL database"
    value       = azurerm_sql_database.example.id
}

output "database_server_fqdn" {
    description = "The fully qualified domain name of the SQL server"
    value       = azurerm_sql_server.example.fully_qualified_domain_name
}

output "database_resource_group" {
    description = "The resource group of the SQL database"
    value       = azurerm_sql_database.example.resource_group_name
}

output "database_server_name" {
    description = "The name of the SQL server"
    value       = azurerm_sql_server.example.name
}

output "database_server_id" {
    description = "The ID of the SQL server"
    value       = azurerm_sql_server.example.id
}

output "database_server_location" {
    description = "The location of the SQL server"
    value       = azurerm_sql_server.example.location
}
