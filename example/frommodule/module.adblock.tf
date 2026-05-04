module "adblock" {
  source = "git::https://github.com/JamesWoolfenden/terraform-cloudflare-adblock.git?ref=e3602d287f3fca1ed665f70d88b38df3eaa381e9" #v0.0.10
  team_name = "woolfenden"
}
