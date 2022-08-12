minikube start \
        --driver='none' \
        --cni='calico' \
	--extra-config=scheduler.bind-address=0.0.0.0 \
	--extra-config=controller-manager.bind-address=0.0.0.0 \
        --kubernetes-version='v1.23.9' \
	--disk-size=400g
