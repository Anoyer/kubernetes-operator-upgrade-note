
$ GOOS=linux go build -o ./in-cluster .

$ docker build -t in-cluster:v1 .

$ kind load docker-image in-cluster:v1 --name=dev

$ kubectl create clusterrolebinding deafult-view --clusterrole=view --serviceaccount=default:default

$ kubectl run -i in-cluster --image=in-cluster:v1
