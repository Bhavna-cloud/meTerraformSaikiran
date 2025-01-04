#TASK 2 -- Recover Statefile stored in S3 bucket

Create S3 bucket and enable versoning

```
terraform apply --auto-approve

```

Go to S3 bucket and delete the statefile. Click on show version option and delete the option having delete marker tag.

```
terraform apply --auto-approve

```

Above command, results in

No changes. Your infrastructure matches the configuration.