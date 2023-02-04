output "team" {
  value=cloudflare_teams_account.woolfenden
}

output "account" {
  value=data.cloudflare_accounts.woolfenden
}

output "accounts" {
  value=data.cloudflare_accounts.woolfenden.accounts[0].id
}

output "malware_rule" {
    value=cloudflare_teams_rule.block_malware
}