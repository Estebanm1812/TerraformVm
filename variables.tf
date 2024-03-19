variable "name_function" {
  type        = string
  description = "Name Function"
}

variable "location" {
  type        = string
  default     = "West Europe"
  description = "Location"
}

variable "network_name" {

  type = string
  default = "Red-Esteban"
  description = "Network Name"
}

variable "network_interface"{

  type = string
  default = "Enlace-1"
  description = "Nombre de Interfaz"
}
variable "vm_name"{

  type = string
  default = "maquinaprueba"
  description = "Nombre de la maquina"

}
variable "public_ip"{

  type = string
  default = "ipPublica"
  description = "Ip Publica"

}

variable "security_group"{

type = string
default = "grupoDeSeguridad"
description = "Grupo de Seguridad"

}
