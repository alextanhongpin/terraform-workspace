init:
	terraform init

plan:
	terraform plan

apply:
	terraform apply

workspace:
	terraform workspace show

list:
	terraform workspace list

default:
	terraform workspace select default

prod:
	terraform workspace select prod