# Jesse quick start

Quick start for jesse, all you need is install [docker  compose](https://docs.docker.com/compose), clone this repo.

Rename .env.example to .env and edit the configuration to your needs. The environment variables will be automatically loaded to the jesse container.

## 1. Start the containers:
```sh
docker-compose up
```

List the containers to make sure the containers are running:

```sh
docker container ls
```

## 2. Into Jesse container, generate the project scaffold and navigate into the project root directory:
```sh
docker container exec -it {name_of_the_container} /bin/bash

cd /home
jesse make-project myBot
cd myBot
jesse run
```


## 3. Install live module (optional)
```sh
pip install /jesse_live-0.0.2-cp39-cp39-manylinux2010_x86_64.whl
```
Then follow the instruction from here: [https://docs.jesse.trade/docs/livetrade.html#installation](https://docs.jesse.trade/docs/livetrade.html#installation) 
