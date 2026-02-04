resource "cloudflare_dns_record" "dmarc" {
  zone_id = var.cloudflare_zone_id
  name    = "_dmarc"
  content = "v=DMARC1; p=quarantine; adkim=s; aspf=s; rua=mailto:dmarcreport@${var.domain}; ruf=mailto:dmarcreport@${var.domain}; pct=100; fo=0:1:d:s;"
  type    = "TXT"
  ttl     = var.default_ttl
  proxied = false
}

resource "cloudflare_dns_record" "spf" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  content = "v=spf1 include:spf.migadu.com -all"
  type    = "TXT"
  ttl     = var.default_ttl
  proxied = false
}

resource "cloudflare_dns_record" "verification" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  content = "hosted-email-verify=${var.hosted_email_verify}"
  type    = "TXT"
  ttl     = var.default_ttl
  proxied = false
}
