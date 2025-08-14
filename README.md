# Monitoring Scripts

A collection of shell scripts for monitoring the performance and health of systems, including Linux servers and Kubernetes clusters.

---

## 1. Linux Server Monitoring

The `linux/linux_monitor.sh` script collects key metrics from a Linux server, such as CPU load, memory usage, disk space, and the top 5 processes by resource consumption.

### How to Use
Simply run the script on your Linux machine or on a remote server via SSH:

```bash
./linux/linux_monitor.sh

---

## 2. Kubernetes Cluster Monitoring

The `kubernetes/kubernetes_monitor.sh` script checks the status of pods, services, and resource consumption within a Kubernetes cluster.

### Prerequisites

* **Minikube:** To have a local Kubernetes cluster for testing.
* **kubectl:** The command-line tool for interacting with the cluster.
* **Metrics Server:** An important Minikube addon that allows for the collection of CPU and memory metrics. Enable it with the command:
    ```bash
    minikube addons enable metrics-server
    ```

### How to Use

1.  First, start your Minikube cluster:
    ```bash
    minikube start
    ```
2.  Next, run the monitoring script:
    ```bash
    ./kubernetes/kubernetes_monitor.sh
    ```

---

## 3. Kubernetes Example Files

The `kubernetes/manifests/` folder contains example YAML files for a `Deployment` and a `Service`. You can use these files to demonstrate the monitoring script's functionality in a live environment.

### How to Apply Resources

To create the example pods and service, use the following commands:
```bash
kubectl apply -f kubernetes/manifests/nginx-deployment.yaml
kubectl apply -f kubernetes/manifests/nginx-service.yaml

...

---

## References

This scripting initiative was inspired by and based on recommendations from the [roadmap.sh](https://roadmap.sh) website.
