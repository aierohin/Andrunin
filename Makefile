all: plan apply deploy

plan:
	cd ./terraform/demo && terraform plan

apply:
	cd ./terraform/demo &&  terraform apply -auto-approve

destroy:
	cd ./terraform/demo &&  terraform destroy -auto-approve

clean:
	cd ./terraform/demo &&  rm -f terraform.tfplan
	cd ./terraform/demo &&  rm -f .terraform.lock.hcl
	cd ./terraform/demo &&  rm -f terraform.tfstate*
	cd ./terraform/demo &&  rm -fR .terraform/

deploy:
	cd ./ansible && source .env.news-app && ansible-playbook -i inventory/demo site.yml