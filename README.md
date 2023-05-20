## Mongo DB replica set local development workaround

start
```
sh start.sh
```

stop
```
sh stop.sh
```

### clusters
- mongo 1 (primary) 
- mongo 2
- mongo 3

### URI string connection
run primary mongo
```
mongodb://localhost:37017/?directConnection=true
```
force using secondary read preferrence (secondary mongo)
```
mongodb://localhost:37018/?directConnection=true&readPreference=secondary
```



