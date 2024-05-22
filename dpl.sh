docker build -t main -f dockerfile_main .
docker build -t stat -f dockerfile_stat .

kubectl apply -f deployment_main.yaml
kubectl apply -f service.yaml
kubectl apply -f deployment_stat.yaml
