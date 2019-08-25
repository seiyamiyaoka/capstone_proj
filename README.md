## over view

- rolling deploy
- jenkins
- cloudformation

## setup

### jenkins setup

1. build ec2 instance used by jenkins
2. plugin install(blue ocean) and github credential
3. jenkins pipeline check(ex: sh 'echo hello')

### eks setup
1. . create.sh capstone-eks template-eks.yml parameter.json(create base aws resource)
2. make create_cluster
3. . create.sh capstone-nodegroup template-eks-nodegroup.yml nodegroup-parameter.json

### Docker setup(local env)
1. using nginx base image, and edit html dir.(write myname)

### ecr and eks setup in jenkins server
1. install kubectl
2. upgrade awscli. and setup ecr and eks credential(check region and validate command at jenkins user)

### pipeline setting
1. lint and docker image push ecr. and execute kubectl command.


## mypipeline
1. lint check(html and dockerfile)
2. ecr push(build image and set tag)
3. apply deployment and service


## how to update content
if you update html, you should update docker image version and deployment version Makefile version.