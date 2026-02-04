resource "cloudflare_dns_record" "autodiscover" {
  # Outlook autodiscovery mechanism
  zone_id  = var.cloudflare_zone_id
  name     = "_autodiscover._tcp"
  type     = "SRV"
  ttl      = var.default_ttl
  priority = 0

  data = {
    priority = 0
    weight   = 1
    port     = 443
    target   = "autodiscover.migadu.com"
  }
}

resource "cloudflare_dns_record" "submissions" {
  # SMTP outgoing
  zone_id  = var.cloudflare_zone_id
  name     = "_submissions._tcp"
  type     = "SRV"
  ttl      = var.default_ttl
  priority = 0

  data = {
    priority = 0
    weight   = 1
    port     = 465
    target   = "smtp.migadu.com"
  }
}

resource "cloudflare_dns_record" "imaps" {
  # IMAP incoming
  zone_id  = var.cloudflare_zone_id
  name     = "_imaps._tcp"
  type     = "SRV"
  ttl      = var.default_ttl
  priority = 0

  data = {
    priority = 0
    weight   = 1
    port     = 993
    target   = "imap.migadu.com"
  }
}

resource "cloudflare_dns_record" "pop3s" {
  # POP3 incoming
  zone_id  = var.cloudflare_zone_id
  name     = "_pop3s._tcp"
  type     = "SRV"
  ttl      = var.default_ttl
  priority = 0

  data = {
    priority = 0
    weight   = 1
    port     = 995
    target   = "pop.migadu.com"
  }
}
