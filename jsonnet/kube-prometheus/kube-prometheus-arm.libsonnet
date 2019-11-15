local k = import 'ksonnet/ksonnet.beta.4/k.libsonnet';

{
  _config+:: {
    versions+:: {
      configmapReloader: 'v0.3.0',
      kubeRbacProxy: 'v0.4.1-arm7',
      kubeStateMetrics: 'v1.8.0-arm7',
      prometheusOperator: 'v0.34.0-arm7',
      prometheus: 'v2.14.0',
    },
    imageRepos+:: {
      configmapReloader: 'jimmidyson/configmap-reload',
      kubeRbacProxy: 'quay.io/metalmatze/kube-rbac-proxy',
      kubeStateMetrics: 'quay.io/metalmatze/kube-state-metrics',
      prometheusConfigReloader: 'quay.io/metalmatze/prometheus-config-reloader',
      prometheusOperator: 'quay.io/metalmatze/prometheus-operator',
    },
  },
}
