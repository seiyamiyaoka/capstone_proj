## name
cfn stackname: capstone-eks
cfn stackname: capstone-nodegroup
us-west-2をつかっている
jenkins: http://ec2-54-201-54-203.us-west-2.compute.amazonaws.com:8080

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

step10にlint失敗のログあり

hadolint setup
https://7me.oji.0j0.jp/2018/11/14/docker-linter-hadolint-memo/


ubuntu docker install

userにeksとecrの権限付与



