#!/bin/bash

echo "===  Kubernetes Cluster Stats  ==="

echo ""
echo ">>> Cluster Nodes: "
kubectl get nodes

echo ""
echo ">>> Runing Pods: "
kubectl get pods --all-namespaces

echo ""
echo ">>> Pods with issues (CrashLoopBackOff, ImagePullBackOff, etc.): "
kubectl get pods --field-selector=status.phase!=Running --all-namespaces

echo ""
echo ">>> Top 5 pods by CPU usage: "
kubectl top pod --all-namespaces --sort-by=cpu | head -n 6 | tail -n 5

echo ""
echo ">>> Top 5 pods by Memory usage: "
kubectl top pod --all-namespaces --sort-by=memory | head -n 6 | tail -n 5

echo ""
echo ">>> Running Services: "
kubectl get services --all-namespaces
