

variable "resourcegroup" {
  description = "The Azure resource group you have been provided by your Contast Sales Engineer"
  default     = ""
}

variable "location" {
  description = "The Azure location you have been provided by your Contast Sales Engineer"
  default     = ""
}

variable "appname" {
  description = "The name of the app to display in Contrast TeamServer. Also used for DNS, so no spaces please!"
  default     = "spring-petclinic"
}

variable "servername" {
  description = "The name of the server to display in Contrast TeamServer."
  default     = "spring-petclinic-docker"
}

variable "environment" {
  description = "The Contrast environment for the app. Valid values: development, qa or production"
  default     = "development"
}

variable "session_metadata" {
  description = "See https://docs.contrastsecurity.com/user-vulnerableapps.html#session"
  default     = ""
}

variable "python_binary" {
  description = "Path to local Python binary"
  default     = "python"
}

variable "apptags" {
  description = "Tags to be associated with the app in Contrast TeamServer."
  default     = ""
}

variable "servertags" {
  description = "Tags to be associated with the server in Contrast TeamServer."
  default     = ""
}

