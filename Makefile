init:
	microk8s enable dashboard
	microk8s enable community
	microk8s enable istio
	kubectl patch svc -n istio-system istio-ingressgateway -p '{"spec":{"externalIPs": ["0.0.0.0"]}}'
	microk8s enable metallb


