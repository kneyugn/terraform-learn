```
terraform plan -var-file=repo-variables.tfvars -out repo-terraform.tfplan
```

```
terraform apply repo-terraform.tfplan
```

todo:

- [x]   implement a provider
- [x]  implement 1 resource
- [x]  implement for_each
- [x]  implement count
- [ ]  use 1 core terraform function
- [ ]  implement 1 module and utilize input / output
- [ ]  implement for expression with tuple or object
- [ ]  implement data templates for generating files
- [ ]  implement github actions with terraform