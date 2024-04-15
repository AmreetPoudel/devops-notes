
# Kubernetes Certification Tips

## Imperative Commands with Kubectl

While working with Kubernetes, you'll mostly use the declarative approach via YAML files. However, imperative commands are useful for quick, one-off tasks and for generating YAML templates.

### Key Options:
- `--dry-run=client`: Tests the command without creating the resource.
- `-o yaml`: Outputs the resource definition in YAML format.

Combine these options to quickly generate YAML templates.

## Pod Management

### Create an NGINX Pod
```bash
kubectl run nginx --image=nginx
```

### Generate Pod YAML (without creation)
```yaml
kubectl run nginx --image=nginx --dry-run=client -o yaml
```

## Deployments

### Create a Deployment
```bash
kubectl create deployment nginx --image=nginx
```

### Generate Deployment YAML (without creation)
```bash
kubectl create deployment nginx --image=nginx --dry-run=client -o yaml
```

### Scale a Deployment
To scale a deployment to 4 replicas:
```bash
kubectl scale deployment nginx --replicas=4
```
Or generate a YAML and modify the replicas count:
```bash
kubectl create deployment nginx --image=nginx --dry-run=client -o yaml > nginx-deployment.yaml
```

## Services

### Expose a Pod as a Service
For a ClusterIP service exposing a Redis pod on port 6379:
```yaml
kubectl expose pod redis --port=6379 --name redis-service --dry-run=client -o yaml
```

### Create a NodePort Service for NGINX
```yaml
kubectl expose pod nginx --type=NodePort --port=80 --name=nginx-service --dry-run=client -o yaml
```
Or:
```yaml
kubectl create service nodeport nginx --tcp=80:80 --node-port=30080 --dry-run=client -o yaml
```

## Tips
- Use `kubectl expose` for simplicity when creating services.
- For specific needs like setting a node port, generate a YAML file and manually edit it before applying.

## References
- Kubernetes official [documentation](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands)
- Conventions and best practices can be found [here](https://kubernetes.io/docs/reference/kubectl/conventions/).
