
variable "MD_SUBNET_NAME"  { 
 description = "Nome della subent"
 type = string
 default = ""
}

variable "MD_VNET_NAME" { 
 description = "Nome della vnet dove si trova la subnet"
 type = string
 default = ""
}


variable "MD_VNET_RG" { 
 description = "Resource group della vnet"
 type = string
 default = ""
}

/*
#VNET_NAME                = "Eng_Lab_Vnet_Sandbox"
#VNET_RG                  = "Eng_Lab_Net_Sandbox"

*/

data "azurerm_subnet" "getsubnetid" {
  name                 = var.MD_SUBNET_NAME
  virtual_network_name = var.MD_VNET_NAME  
  resource_group_name  = var.MD_VNET_RG
}


output "subnet_id" {
  value = data.azurerm_subnet.getsubnetid.id
}