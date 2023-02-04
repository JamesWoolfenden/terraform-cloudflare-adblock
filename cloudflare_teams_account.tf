resource "cloudflare_teams_account" "woolfenden" {
  account_id = local.account_id
  block_page {
    enabled          = true
    name             = var.team_name
    header_text      = "This website is blocked by Cloudfare DNS"
    footer_text      = "Blocked footer"
    logo_path        = "https://example.com/logo.png"
    background_color = "#e8e8e8"
  }

  antivirus {
    enabled_download_phase = true
    enabled_upload_phase   = false
    fail_closed            = false
  }

  proxy {
    tcp = true
    udp = true
  }

  logging {
    redact_pii = true
    settings_by_rule_type {
      dns {
        log_all    = true
        log_blocks = false
      }
      http {
        log_all    = true
        log_blocks = false
      }
      l4 {
        log_all    = true
        log_blocks = false
      }
    }
  }

  activity_log_enabled = true
  tls_decrypt_enabled  = false
}
