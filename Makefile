install:
	istioctl install
	kubectl create ns cert-manager
	kubectl create ns prom
	helm install cert-manager ./helm/cert-manager -n cert-manager
	helm install prometheus ./helm/kube-prometheus-stack -n prom
	kubectl apply -f ./k8s/cert-issuer.yaml

