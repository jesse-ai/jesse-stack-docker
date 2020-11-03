# Jesse quick start

Quick start for jesse, all you need is install [docker  compose](https://docs.docker.com/compose), clone this repo.


## 1. Open a new terminal start the db:
```sh 
docker-compose up db
```

## 2. Open a new terminal start Jesse container:
```sh
docker-compose run jesse bash
```

## 3. Into Jesse container, upgrade Jesse pkg to the latest version:
```sh
pip install -U jesse
```

## 4. Into Jesse container, navigate to the project root directory:
```sh
cd /home/myBot
```

## 5. Into Jesse container, Import the candle history:
```sh
jesse import-candles Binance BTCUSDT 2020-06-01
```

## You're good to go! into Jesse container, run a backtest:
```sh
jesse backtest 2019-11-01 2020-11-01 --chart
```
