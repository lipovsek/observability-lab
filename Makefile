eks_template:
	dinamo generate -t eks.yam.tmpl -f eks.yml
eks_up:
	eksctl create cluster -f eks.yml --install-nvidia-plugin=false
kibana_pass:
	kubectl get secret basic-es-es-elastic-user -n logging -o=jsonpath='{.data.elastic}' | base64 --decode; echo
