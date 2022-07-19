validate-manifest:
	oc process --local=true -f openshift/template.yaml | kubeconform -strict -verbose -skip ServiceMonitor -

validate-dashboards:
	kubeconform -strict -verbose dashboards/
