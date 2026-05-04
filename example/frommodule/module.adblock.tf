module "adblock" {
  source = "git::https://github.com/JamesWoolfenden/terraform-cloudflare-adblock.git?ref=ef120f4dc9c20870871599b9281e7a239adfaed1" #v0.0.2
  team_name = "woolfenden"
}
