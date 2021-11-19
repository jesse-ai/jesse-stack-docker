# Jesse quick start

Quick start for jesse, all you need is install [docker  compose](https://docs.docker.com/compose), clone this repo.
cd into the directioy.

## 1. Start the containers:

cd into the cloned repo.

```sh
docker-compose up
```

List the containers to make sure the containers are running:

```sh
docker container ls
```

## 2. Into Jesse container, generate the project scaffold and navigate into the project root directory:

Currently the jesse container comes with the non-dashboard version. 
So we need to uninstall that and install from git.

```sh
docker container exec -it {name_of_the_container} /bin/bash

apt update
apt install git
pip uninstall jesse

# pip install git+https://github.com/jesse-ai/jesse.git@dashboard || currently a change in the source code is needed to work with docker. Use editable install:

git clone -b dashboard https://github.com/jesse-ai/jesse.git
cd jesse
pip install -e .

pip install -r https://raw.githubusercontent.com/jesse-ai/jesse/dashboard/requirements.txt
```

In `jesse/__init__.py` line 183 change `uvicorn.run(fastapi_app, host="127.0.0.1", port=8000, log_level="info")` to `uvicorn.run(fastapi_app, host="0.0.0.0", port=8000, log_level="info")`.

```sh
cd /home
jesse make-project myBot
cd myBot
```

Update the .env in the project. `POSTGRES_HOST=postgres` and `REDIS_HOST=redis` and adjust the credentials and ports if you changed them in the `docker-compose.yml`.

Setup is done. Find your strategy config and file in the jesseData directory.

## 3. Install live module (optional)
```sh
pip install /jesse_live-0.0.2-cp39-cp39-manylinux2010_x86_64.whl
```
Then follow the instruction from here: [https://docs.jesse.trade/docs/livetrade.html#installation](https://docs.jesse.trade/docs/livetrade.html#installation) 
