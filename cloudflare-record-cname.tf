resource "cloudflare_dns_record" "key1" {
  zone_id = var.cloudflare_zone_id
  name    = "key1._domainkey"
  content = "key1.${var.domain}._domainkey.migadu.com"
  type    = "CNAME"
  ttl     = var.default_ttl
  proxied = false
}

resource "cloudflare_dns_record" "key2" {
  zone_id = var.cloudflare_zone_id
  name    = "key2._domainkey"
  content = "key2.${var.domain}._domainkey.migadu.com"
  type    = "CNAME"
  ttl     = var.default_ttl
  proxied = false
}

resource "cloudflare_dns_record" "key3" {
  zone_id = var.cloudflare_zone_id
  name    = "key3._domainkey"
  content = "key3.${var.domain}._domainkey.migadu.com"
  type    = "CNAME"
  ttl     = var.default_ttl
  proxied = false
}

resource "cloudflare_dns_record" "autoconfig" {
  # Thunderbird autoconfig mechanism
  zone_id = var.cloudflare_zone_id
  name    = "autoconfig"
  content = "autoconfig.migadu.com"
  type    = "CNAME"
  ttl     = var.default_ttl
  proxied = false
}
