# docker-http-checker

A simple http checking script for debug purpose.  
Log will write down at `/opt/log/` inside the contatiner.

### Usage

The simplest usage:

```
$ docker run -d -e "URL=https://example.com/" -v "$PWD/log:/opt/log/" j796160836/docker-http-checker
```

Change the `URL` variable and log file path you want.

#### Variables:

- `URL` the testing URL.
- `INTERVAL` the sleep interval.  
(default value: `2m`)
- `LOGFILE` the log saving path.  
(default value: `/opt/log/log.log`)

### License

MIT