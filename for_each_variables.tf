variable "rgname" {
  type        = string
  description = "Resource group name"

}

variable "location" {

  type = string

  description = "Resource Group location"


}

variable "resourcedetails" {
  type = map(object({
    rg_name       = string
    location1     = string
    vnet_name     = string
    mysubnet_name = string
  }))
  default = {
    westus = {
      rg_name = "westus-rg"

      location1     = "westus2"
      vnet_name     = "westvnet"
      mysubnet_name = "westsubnet"

    }
    eastus = {
      rg_name = "eastus-rg"

      location1     = "eastus"
      vnet_name     = "eastvnet"
      mysubnet_name = "eastsubnet"

    }
  }
}
