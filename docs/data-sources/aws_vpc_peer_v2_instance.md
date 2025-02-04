---
page_title: "instaclustr_aws_vpc_peer_v2_instance Data Source - terraform-provider-instaclustr"
subcategory: ""
description: |-
---

# instaclustr_aws_vpc_peer_v2_instance (Data Source)
Definition of an AWS VPC Peering request to allow privately routed connections to a target data centre.
## Example Usage
```
data "instaclustr_aws_vpc_peer_v2_instance" "example" { 
  id = "<id>" // the value of the `id` attribute defined in the root schema below
}
```
## Glossary
The following terms are used to describe attributes in the schema of this data source:
- **_read-only_** - These are attributes that can only be read and not provided as an input to the data source.
- **_required_** - These attributes must be provided for the data source's information to be queried.
- **_nested block_** - These attributes use the [Terraform block syntax](https://www.terraform.io/language/attr-as-blocks) when defined as an input in the Terraform code. Attributes with the type **_repeatable nested block_** are the same except that the nested block can be defined multiple times with varying nested attributes. When reading nested block attributes, an index must be provided when accessing the contents of the nested block, example - `my_resource.nested_block_attribute[0].nested_attribute`.
## Root Level Schema
### Read-only attributes
*___peer_subnets___*<br>
<ins>Type</ins>: list of strings, read-only<br>
<br>The subnets for the peering VPC.<br><br>
*___cdc_id___*<br>
<ins>Type</ins>: string (uuid), read-only<br>
<br>ID of the Cluster Data Centre<br><br>
*___peer_region___*<br>
<ins>Type</ins>: string, read-only<br>
<br>Region code for the accepter VPC.<br><br>
*___peer_vpc_id___*<br>
<ins>Type</ins>: string, read-only<br>
<br>ID of the VPC with which the peering connection is created.<br><br>
*___status_code___*<br>
<ins>Type</ins>: string, read-only<br>
<br>Status of the VPC Peering Connection. Values can be `pending-acceptance`, `failed`, `expired`, `provisioning`, `active`, `deleting`, `deleted` or `rejected`.<br><br>
*___id___*<br>
<ins>Type</ins>: string, read-only<br>
<br>ID of the VPC peering connection.<br><br>
*___peer_aws_account_id___*<br>
<ins>Type</ins>: string, read-only<br>
<br>The AWS account ID of the owner of the accepter VPC.<br><br>
