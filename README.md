# Jesse quick start

Quick start for jesse, all you need is install [docker  compose](https://docs.docker.com/compose), clone this repo.


## 1. Start Jesse container:
```sh
docker-compose run jesse bash
```

## 2. Into Jesse container, generate the project scaffold and navigate into the project root directory:
```sh
cd /home
jesse make-project myBot
cd myBot
```

Setup is done. Find your strategy config and file into jesseData directory, follow the instruction from here [https://docs.jesse.trade/docs/strategies/generating-new-strategy.html](https://docs.jesse.trade/docs/strategies/generating-new-strategy.html)
Web interface for backtesting result chart: `http://localhost:3000`

## 3. Install live module (optional)
```sh
pip install /jesse_live-0.0.2-cp39-cp39-manylinux2010_x86_64.whl
```
Then follow the instruction from here: [https://docs.jesse.trade/docs/livetrade.html#installation](https://docs.jesse.trade/docs/livetrade.html#installation) 
