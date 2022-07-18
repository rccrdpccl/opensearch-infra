validate-manifest:
	oc process --local=true -f openshift/template.yaml | kubeconform -strict -verbose -

validate-dashboards:
	kubeconform -strict -verbose dashboards/
