variable "subscription_id" {
  description = "The subscription ID where the resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location/region where the resources will be created"
  type        = string
}

variable "sql_database_name" {
  description = "The name of the database"
  type        = string

}

variable "sql_server_name" {
  description = "The name of the SQL Server"
  type        = string
}

variable "admin_username" {
  description = "The administrator username for the SQL Server"
  type        = string

}

variable "admin_password" {
  description = "The administrator password for the SQL Server"
  type        = string
}

