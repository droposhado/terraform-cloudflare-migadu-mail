variable "cloudflare_zone_id" {
  type        = string
  description = "Domain ID registered in Cloudflare dashboard, receive as variable because major upgrades broke and this simplify use"
}

variable "default_ttl" {
  type = string
}

variable "domain" {
  type = string
}

variable "hosted_email_verify" {
  type = string
}
