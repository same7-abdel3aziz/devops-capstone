eksctl create cluster \
--name udacity-capstone \
--version 1.14 \
--region us-east-2 \
--nodegroup-name udacity-nodes \
--node-type t2.micro \
--nodes 2 \
--nodes-min 1 \
--nodes-max 2 \
--node-ami auto
