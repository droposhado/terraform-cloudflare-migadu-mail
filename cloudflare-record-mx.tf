resource "cloudflare_dns_record" "priority_10" {
  zone_id = var.cloudflare_zone_id
  name     = "@"
  content  = "aspmx1.migadu.com"
  type     = "MX"
  priority = 10
  ttl      = var.default_ttl
  proxied  = false
}

resource "cloudflare_dns_record" "priority_20" {
  zone_id = var.cloudflare_zone_id
  name     = "@"
  content  = "aspmx2.migadu.com"
  type     = "MX"
  priority = 20
  ttl      = var.default_ttl
  proxied  = false
}
