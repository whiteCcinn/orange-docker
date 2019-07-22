# orange-docker

orange-base dockerfile, include orange/mysql/consule/upstream-services

## Depend on

- [Orange](https://github.com/orlabs/orange)
- [UpServices](https://github.com/whiteCcinn/dispatcher-misc)

## Usage

```
cp -v env.example .env
cd src && git clone https://github.com/orlabs/orange.git && cd -
cd src && git clone https://github.com/whiteCcinn/dispatcher-misc.git && cd -

docker-compose up
```
