```
terraform plan -var-file=repo-variables.tfvars -out repo-terraform.tfplan
terraform apply repo-terraform.tfplan
```