
# VERSAO=$(git describe --tags $(git rev-list --tags --max-count=1))

cd PipelineAMI/ami
# cd terraform
RESOURCE_ID=$(terraform output | grep resource_id | awk '{print $2;exit}' | sed -e "s/\",//g")

cd ../ami
terraform init
TF_VAR_versao=1 TF_VAR_resource_id=$RESOURCE_ID terraform apply -auto-approve
