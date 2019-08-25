build_nginx:
	docker build -t cap_nginx:v1.3 .
exec_bash:
	docker run -it cap_nginx /bin/bash
update_cfn:
	. update.sh capstone-eks template-eks.yml parameter.json
create_cluster:
	aws eks create-cluster \
	--name capstone-eks \
	--role-arn arn:aws:iam::381271138029:role/eksServiceRole \
	--resources-vpc-config subnetIds=subnet-00e860838fba2dca7,subnet-0f4af217624d7177b,subnet-0f22e63bac29a52f3,securityGroupIds=sg-06c4b43fa27090a95
describe_cls:
	aws eks describe-cluster --name capstone-eks
container_restart:
	docker restart container-nginx
add_tag:
	docker tag cap_nginx:v1.3 381271138029.dkr.ecr.us-west-2.amazonaws.com/cap_nginx:v1.3
push_ecr:
	docker push 381271138029.dkr.ecr.us-west-2.amazonaws.com/cap_nginx:v1.3
