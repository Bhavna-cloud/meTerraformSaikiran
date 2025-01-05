
https://www.phillipsj.net/posts/how-to-configure-logging-for-terraform/

```
terraform init
export TF_LOG="TRACE"
terraform fmt;terraform validate
terraform apply
export TF_LOG="ERROR"
terraform destroy
git log --oneline
terraform init
export TF_LOG="TRACE"
export TF_LOG_PATH="./logs/terraform.txt"
terraform apply --auto-approve
terraform destroy --auto-approve

```
