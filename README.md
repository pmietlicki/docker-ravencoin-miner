![Ravencoin Logo](https://ravencoin.org/assets/img/media/logo-wide-sm.png)

# Ravencoin Miner

Image of latest [xmrig](https://github.com/xmrig/xmrig) version, a very high performance miner

## Configuration variables with default values

### Mandatory
**You can use config json file by putting it inside /home/ravencoin/config.json**\
To generate a config file, you can use the [generator](https://config.xmrig.com/)\
**POOL_URL**=rvn-eu1.nanopool.org:12222\
**POOL_USER**=RG8Foh71fzgbrczHbUJSdWna6u4e7sgsr6

### Optional
**POOL_PW**=Rancher\
**COIN**=ravencoin

## Run

For easy start, with default configuration.

```sh
docker run -d --restart=always pmietlicki/ravencoin-miner
```

Use your own configuration.

- Create your [wallet](https://ravencoin.org/wallet/)
- Choose a [pool](https://ravencoin.org/pools/) (default: `nanopool`)
- Run container

```sh
docker run -d --name ravencoin-miner pmietlicki/ravencoin-miner -e POOL_URL=rvn-eu1.nanopool.org:12222 -e POOL_USER=RG8Foh71fzgbrczHbUJSdWna6u4e7sgsr6
```

|Environment       |     Description      |
|------------------|----------------------|
|POOL_USER         | Wallet Address       |
|POOL_URL          | URL of mining server |

**Docker compose**

    version: "3"
    services:
      ravencoin-miner:
        image: pmietlicki/ravencoin-miner
        environment:
          - POOL_URL=rvn-eu1.nanopool.org:12222
          - POOL_USER=RG8Foh71fzgbrczHbUJSdWna6u4e7sgsr6
        restart: on-failure

You will then have a running ravencoin miner that uses all the available resources for mining.

To see the output from the miner, run one of:

    $ docker logs -t -f ravencoin-miner
    $ docker-compose logs

To update the miner:

    $ docker stop ravencoin-miner
    $ docker rm ravencoin-miner
    $ docker pull pmietlicki/ravencoin-miner
    $ docker run -d --mount ...

To stop the miner:

    $ docker stop ravencoin-miner
    $ docker-compose stop

To restart the miner:

    $ docker restart ravencoin-miner
    $ docker-compose restart

## Build

    $ cd src/miner
    $ docker build -t pmietlicki/ravencoin-miner .

### Donate

- XMR: `45rfqYG9iNPddvenLpjFskJUhFgqBkdhDeah3X8D8ZJM3KpKqZWCLz3ewLsVd269tZiEyQRV53Ldv2DJb6xeuFokF7SBb1p`
- RVN: `RG8Foh71fzgbrczHbUJSdWna6u4e7sgsr6`
- BTC: `bc1q8x59fwt7v9w3haa8dc5jtaurs3azjq2ut5nekp`
- NIM: `NQ51BJ7CGJA4Y35XNL7KL9VVVYQNA0K76FMB`
- DERO: `dERooMhHriXTfpnVtJTaAGJKGsWfZ4o7U2gRrBKRsQZJEXrfG3Ws8TpbeLckBDiG6mSjt1Fi33ydHAPbfDrDHphF34sep8P16W`
