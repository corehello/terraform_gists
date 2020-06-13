# terraform_gists

## Create new workspace
```
$ terraform workspace list
$ terraform workspace new workspace_20200607
```

## Write teraform HCL

## Format the code
```
$ terraform fmt [file_path]
```


## Initialize the terraform context( will initialize modules and install all dependent plugins/providers )
```
$ terraform init
```

## Validate the terraform code(static analysis)
```
$ terraform validate
```


## Check what changes will be applied
```
$ terraform plan
```

## Apply the changes( incremental change )
```
$ terraform apply
```

## Destroy the infrastructure
```
$ terraform destory
```
