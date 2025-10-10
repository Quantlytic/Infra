# Infra
Infrastructure services needed for the data pipeline.

## Running the Infrastructure
To run the services, execute `docker compose up -d`

## Migration from Kubernetes
I decided to migrate the infrastructure from kubernetes to a simple docker compose file. This is a quick way to run a minio server / kafka server without worrying about the complex kubernetes configurations. Ideally, in my next role I won't need to know how to configure and setup a kafka server with auto scaling brokers on the cluster - that would be setup by senior engineers or experienced developers. Because of that, I'm okay with simplifying this part of the project so I can focus on CI/CD and automated deployments for the code I write (like the BinanceConsumer).
