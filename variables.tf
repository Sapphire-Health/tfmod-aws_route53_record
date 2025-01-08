variable "var_dns_zones" {
    type = map
}

variable "mod_route53_zone" {
  type = map
}

variable "var_name_prefixes" {
  type = map
  default = {}
}

variable "var_name_suffixes" {
  type = map
  default = {}
}