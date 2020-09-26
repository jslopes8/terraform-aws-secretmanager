variable "create" {
    type = bool
    default = true
}
variable "secret_name" {
    type = string
}
variable "recovery_window_in_days" {
    type = number
    default = "0"
}
variable "default_tags" {
    type = map(string)
    default = {}
} 
variable "version_stages" {
    type = list
    default = []
}
variable "secret_string" {
    type = any
    default = {}
}