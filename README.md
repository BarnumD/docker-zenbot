# docker-zenbot

Run carlos8f/zenbot in a docker container. You must have a copy of config.js and configure it, at a minimum to use 'mongodb' as your database uri.

### Start a container and run zenbot manually:
```docker run -d -v /docker/mounts/zenbot/config.js:/usr/src/zenbot/config.js:ro --link mongodb:mongodb --name zenbot barnumd/zenbot:3.0```
Enter zenbot commands manually.  (start with `zenbot --help`)

### Start a container that automatically runs all components:
```docker run -d -v /docker/mounts/zenbot/config.js:/usr/src/zenbot/config.js:ro --link mongodb:mongodb -e RECORD=Y -e LEARN=Y -e LISTEN=Y -RUN=Y -e RUNOPTS="--trade" -p 3011:3011 --name zenbot-record barnumd/zenbot:3.0```

### Start a container that automatically runs one component:
 * Record
```docker run -d -v /docker/mounts/zenbot/config.js:/usr/src/zenbot/config.js:ro --link mongodb:mongodb -e RECORD=Y --name zenbot-record barnumd/zenbot:3.0```
 * Learn
```docker run -d -v /docker/mounts/zenbot/config.js:/usr/src/zenbot/config.js:ro --link mongodb:mongodb -e LEARN=Y --name zenbot-learn barnumd/zenbot:3.0```
 * Listen
```docker run -d -v /docker/mounts/zenbot/config.js:/usr/src/zenbot/config.js:ro --link mongodb:mongodb -e LISTEN=Y -p 3011:3011 --name zenbot-listen barnumd/zenbot:3.0```
 * Run
```docker run -d -v /docker/mounts/zenbot/config.js:/usr/src/zenbot/config.js:ro --link mongodb:mongodb -e RUN=Y -e RUNOPTS="--trade" --name zenbot-run barnumd/zenbot:3.0```


### Requirements
- A copy of config.js (see run commands)
- Run a mongodb container.
