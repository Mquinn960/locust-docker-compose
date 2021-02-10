# Docker Compose Locust Demo

## Prerequisites

This system requires both the Docker engine and Docker Compose
in order to build and run. This is currently only tested on
Linux.

## Initial Build

To offer flexibility in the building of the baseline Locust
image, and to allow for build overrides, an extended image
is used: ```mqlocust```. This image is build by issuing the
following commands:

```cd build/resources```
```docker build .```
```docker tag <image_id> locust-test/mqlocust```

Once built, the below run commands can be issued to perform
work.

## Run Commands

In order to run the Locust master and worker containers via
docker-compose, simply invoke the dev service as shown below:

```sudo bash run-dev.sh <number_of_workers>```

Where ```<number_of_workers>``` is the desired number of worker
containers in the stack. For example:

```sudo bash run-dev.sh 3```

Will spawn a master node running at ```http://localhost:8089``` 
with ```3``` worker nodes ready to send requests.

## Locust Files

The locust files used within this demo are controlled via the
Locust Files Repo: https://github.com/Mquinn960/locust-files

## Disclaimer

This setup is not intended for production usage, and care
should be exercised in order to not execute inadvertant
DDOS attacks on unwitting hosts.