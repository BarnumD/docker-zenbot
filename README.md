# docker-zenbot

Run carlos8f/zenbot in a docker container. You must have a copy of config.js and configure it, at a minimum to use 'mongodb' as your database uri.

### Start a container and run zenbot manually:
```docker run -d -v /docker/mounts/zenbot/config.js:/usr/src/zenbot/config.js:ro --link mongodb:mongodb --name zenbot barnumd/zenbot:3.5.13```
Enter zenbot commands manually.  (start with `zenbot --help`)

### Start a container that automatically runs all components using btc usd as a default:
```docker run -d -v /docker/mounts/zenbot/config.js:/usr/src/zenbot/config.js:ro --link mongodb:mongodb -e REDUCER=Y -e SERVER=Y -RUN=Y -p 3011:3011 --name zenbot-record barnumd/zenbot:3.5.13```
### Customize the zenbot parameters
Use the variables REDUCEROPTS, SERVEROPTS, or RUNOPTS="" to add parameters.
```docker run -d -v /docker/mounts/zenbot/config.js:/usr/src/zenbot/config.js:ro --link mongodb:mongodb -e REDUCER=Y -e SERVER=Y -RUN=Y RUNOPTS="map --backfill run --rs eth_usd" -p 3011:3011 --name zenbot-record barnumd/zenbot:3.5.13```


### Start a container that automatically runs one component:
 * Reducer
```docker run -d -v /docker/mounts/zenbot/config.js:/usr/src/zenbot/config.js:ro --link mongodb:mongodb -e REDUCER=Y --name zenbot-record barnumd/zenbot:3.5.13```
 * Server
```docker run -d -v /docker/mounts/zenbot/config.js:/usr/src/zenbot/config.js:ro --link mongodb:mongodb -e SERVER=Y --name zenbot-learn barnumd/zenbot:3.5.13```
 * Run
```docker run -d -v /docker/mounts/zenbot/config.js:/usr/src/zenbot/config.js:ro --link mongodb:mongodb -e RUN=Y -e RUNOPTS="map --backfill run --rs btc_usd" --name zenbot-run barnumd/zenbot:3.5.13```


### Requirements
- A copy of config.js (see run commands)
- Run a mongodb container.
