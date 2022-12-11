# need to delete previous tf files and init again as using the fresh account from acloud guru each time.
aws configure
rm -rf .terraform
rm terraform.tfstate*
terraform init
terraform apply
aws eks --region $(terraform output -raw region) update-kubeconfig \
    --name $(terraform output -raw cluster_name)
