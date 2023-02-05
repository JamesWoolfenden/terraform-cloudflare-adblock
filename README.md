# terraform-cloudflare-adblock

[![Build Status](https://github.com/JamesWoolfenden/terraform-cloudflare-adblock/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-cloudflare-adblock)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-cloudflare-adblock.svg)](https://github.com/JamesWoolfenden/terraform-cloudflare-adblock/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-cloudflare-adblock.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-cloudflare-adblock/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-cloudflare-adblock/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-cloudflare-adblock&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-cloudflare-adblock/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-cloudflare-adblock&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

```terraform
module "adblock" {
  source        = "JamesWoolfenden/adblock/cloudflare"
  version       = "0.0.1"
  team_name     = "<yourteamnamefromcloudflare>"
}
```

To run a copy of the Github action (Deploy and Bump), you need to add the env vars to your repository secrets:

CLOUDFLARE_API_KEY

CLOUDFLARE_EMAIL

Adapted from <https://blog.marcolancini.it/2022/blog-serverless-ad-blocking-with-cloudflare-gateway/>.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 3.33.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 3.33.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_teams_account.woolfenden](https://registry.terraform.io/providers/cloudflare/cloudflare/3.33.1/docs/resources/teams_account) | resource |
| [cloudflare_teams_list.pihole_domain_lists](https://registry.terraform.io/providers/cloudflare/cloudflare/3.33.1/docs/resources/teams_list) | resource |
| [cloudflare_teams_rule.block_ads](https://registry.terraform.io/providers/cloudflare/cloudflare/3.33.1/docs/resources/teams_rule) | resource |
| [cloudflare_teams_rule.block_malware](https://registry.terraform.io/providers/cloudflare/cloudflare/3.33.1/docs/resources/teams_rule) | resource |
| [cloudflare_accounts.woolfenden](https://registry.terraform.io/providers/cloudflare/cloudflare/3.33.1/docs/data-sources/accounts) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_team_name"></a> [team\_name](#input\_team\_name) | Your cloudflare team name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account"></a> [account](#output\_account) | n/a |
| <a name="output_accounts"></a> [accounts](#output\_accounts) | n/a |
| <a name="output_malware_rule"></a> [malware\_rule](#output\_malware\_rule) | n/a |
| <a name="output_team"></a> [team](#output\_team) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Policy

This is the policy required to build this project:

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->
and  Using <https://github.com/marco-lancini/utils/tree/main/terraform/cloudflare-gateway-adblocking>

## Keeping the domain list up to date

The `action-update-list.yml` provides a sample
GitHub Actions workflow that periodically (monthly) fetches the list upstream and commits it to the repo if it has changed.

![workflow](https://blog.marcolancini.it/images/posts/blog_serverless_adblocking_gh_workflow.png)

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-cloudflare-adblock/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-cloudflare-adblock/issues) to report any bugs or file feature requests.

## Copyrights

Copyright � 2023 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
