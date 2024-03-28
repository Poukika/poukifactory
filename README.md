# Poukifactory

## Dedicated-server for satisfactory

Ports:

- 15000 udp
- 15777 udp
- 7777 udp

Get docker image [here](https://hub.docker.com/r/pouki/satisfactory)

## AWS Cloud

Environments variables:

- access_key: aws access_key used by Terraform
- secret_key: aws secret_key used by Terraform

## OVH Cloud (cluster Kubernetes) /!\ UDP ports not supported

Environments variables:

- application_key: OVH token generation
- application_secret: OVH token generation
- consumer_key: OVH token generation
- service_name: Project id OVH
- endpoint: Region cluster
- flavor: Instance type
