## name
cfn stackname: capstone-eks
cfn stackname: capstone-nodegroup
us-west-2をつかっている

https://docs.aws.amazon.com/ja_jp/eks/latest/userguide/create-kubeconfig.html

## cmd
- jenksins build
- install blue ocean
- nginx build

## memo
AWS::CloudFormation::Interfaceとは
AWSコンソールに表示される設定。一番右に出現
clusterとnodeのセキュリティグループ作成
kubenetesにaws iamのconfigを割り当て

nodesにデプロイするためにjsonファイルを作成しapplyする