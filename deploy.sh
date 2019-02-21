echo "Initalizing terraform"
terraform init -input=false
echo "Applying terraform"
terraform apply -auto-approve
