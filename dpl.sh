docker build -t main -f dockerfile_main .
docker build -t stat -f dockerfile_stat .

kubectl apply -f /Users/muradgamzatov/Desktop/ppprp/deployment_main.yaml
kubectl apply -f /Users/muradgamzatov/Desktop/ppprp/service.yaml
kubectl apply -f /Users/muradgamzatov/Desktop/ppprp/deployment_stat.yaml
