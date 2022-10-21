install_k8s:
	sudo snap install microk8s --classic --channel=1.24
	sudo usermod -a -G microk8s $(USER)
	sudo chown -f -R $(USER) ~/.kube
	
enable_addons:
	microk8s enable dns storage

install:
	istioctl install
	kubectl create ns cert-manager
	kubectl create ns prom
	kubectl create ns owncloud
	helm install cert-manager ./helm/cert-manager -n cert-manager
	helm install prometheus ./helm/kube-prometheus-stack -n prom
	kubectl apply -f ./k8s/cert-issuer.yaml

