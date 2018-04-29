# Docker
This folder contains docker setup for our application to execute and test it uner development environment.

## Development Environment

If you want to load a particular SQL dump for this environment,
copy your dump in `postgres/sql_dump_loader` and name it `dump.sql`, then:
```
cd postgres/sql_dump_loader
docker-compose build
docker-compose up
```

To start application into development environment:
```
cd app/app_development
docker-compose up
```
## Test Environment

To test the application:
```
cd app/app_test
docker-compose up --abort-on-container-exit
```