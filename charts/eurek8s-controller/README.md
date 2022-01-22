# Eurek8s Controller Chart

## Installing

```
helm repo add eurek8s https://eurek8s.github.io/helm-charts/
helm install eurek8s eurek8s/eurek8s-controller -n eurek8s
```

## Upgrading

Helm doesn't upgrade Custom Resource Definitions so if there is an upgrade, you need to apply the CRDs itself.

This is the command if you want to install the main branch CRD version:
`kubectl apply -f https://raw.githubusercontent.com/Eurek8s/controller/main/crds/crds.yaml`
