variable "prefix" {
  type        = string
  description = "Prefix for resource names"
}
variable "resource_group"{

    type = string
    default = "resourceGroup"
    description = "resource group"
}
variable "location"{

     type = string
    default = "location"
    description = "Location"
}
variable "user"{

     type = string
    default = "user"
    description = "User"
}
variable "password"{

     type = string
    default = "password"
    description = "password"
}