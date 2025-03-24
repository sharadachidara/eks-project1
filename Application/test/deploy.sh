#!/bin/bash

helm repo add apache-airflow https://airflow.apache.org/
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm install airflow apache-airflow/airflow --namespace airflow --create-namespace
helm install kafka bitnami/kafka --namespace kafka --create-namespace
helm install spark bitnami/spark --namespace spark --create-namespace
helm install cluster-autoscaler autoscaler/cluster-autoscaler --set autoDiscovery.clusterName=ingestion-cluster
