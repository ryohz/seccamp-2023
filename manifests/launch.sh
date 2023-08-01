echo '--- kind delete cluster'
kind delete cluster
echo 
echo '--- kind create cluster --config ./config.yml'
kind create cluster --config ./config.yml
# echo 'kind create cluster'
# kind create cluster 
echo 
echo '--- kubectl apply -f ingress.yml'
kubectl apply -f ingress.yml
# echo 
# echo '--- kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml'
# kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
echo '--- kubectl apply -f https://projectcontour.io/quickstart/contour.yaml'
kubectl apply -f https://projectcontour.io/quickstart/contour.yaml
echo 
echo '--- kubectl apply -f goapp.yml'
kubectl apply -f goapp.yml
echo 
echo '--- kubectl apply -f goapp-secret.yml'
kubectl apply -f goapp-secret.yml
echo 
echo '--- kubectl apply -f postgres.yml'
kubectl apply -f postgres.yml
echo 
echo '--- kubectl apply -f postgres-secret.yml'
kubectl apply -f postgres-secret.yml
echo 



