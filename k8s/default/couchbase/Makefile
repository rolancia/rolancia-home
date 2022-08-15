install:
	kubectl create -f ./crd.yaml
	./bin/cao create admission
	./bin/cao create operator
	kubectl apply -f service.yaml
	kubectl apply -f gateway.yaml
	kubectl apply -f ingress.yaml

uninstall:
	kubectl delete -f ingress.yaml
	kubectl delete -f gateway.yaml
	kubectl delete -f service.yaml
	./bin/cao delete operator
	./bin/cao delete admission
	kubectl delete -f ./crd.yaml

