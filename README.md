# SpringBoot Hello World

How to deploy SpringBoot application using Tektoncd

## Pre-requisites

* Kubernetes Cluster with Tektoncd
* A default storage class is defined and available

## Create PVC that will be used as sources workspace

```shell
kubectl apply -f tekton/sources-pvc.yaml
```

## Tasks to be installed

```shell
kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/git-clone/0.1/git-clone.yaml
```

```shell
kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/buildah/0.1/buildah.yaml
```

```shell
kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/openshift-client/0.1/openshift-client.yaml
```

```
kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/maven/0.1/maven.yaml
```

Check the installed tasks

```shell
tkn task list
```
## Pipelines to be installed

```shell
kubectl apply -f tekton/app-pipeline.yaml
```

## Build and Deploy

