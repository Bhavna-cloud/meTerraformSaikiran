```
terraform apply --var-file dev.tfvars
terraform apply --var-file uat.tfvars
```

```
OUTPUT:


# aws_subnet.subnet1-public will be updated in-place
  ~ resource "aws_subnet" "subnet1-public" {
        id                                             = "subnet-02df73516f6099bc3"
      ~ tags                                           = {
          ~ "Name" = "Terraform_Public_Subnet1-dev" -> "Terraform_Public_Subnet1-uat"
        }
      ~ tags_all                                       = {
          ~ "Name" = "Terraform_Public_Subnet1-dev" -> "Terraform_Public_Subnet1-uat"
        }
        # (19 unchanged attributes hidden)
    }

It Shows dev is replaced with uat. Means changes made in same state file. 
```
```
terraform destroy --auto-approve --var-file dev.tfvars

```
Manually delete statefile from S3 bucket.

```
terraform workspace list
terraform workspace new dev
terraform workspace new uat
terraform workspace new prod

Check S3 bucket
```
