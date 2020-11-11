# Jesse quick start

Quick start for jesse, all you need is install [docker  compose](https://docs.docker.com/compose), clone this repo.


## 1. Start Jesse container:
```sh
docker-compose run jesse bash
```

## 2. Into Jesse container, upgrade Jesse pkg to the latest version:
```sh
pip install -U jesse
```

## 3. Into Jesse container, navigate to the project root directory:
```sh
cd /home/myBot
```

## 4. Into Jesse container, Import the candle history:
```sh
jesse import-candles Binance BTCUSDT 2020-06-01
```

## You're good to go! into Jesse container, run a backtest:
```sh
jesse backtest 2019-11-01 2020-11-01 --chart
```

Web interface for backtesting result chart: `http://localhost:3000`
