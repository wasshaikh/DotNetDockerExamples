```
$ docker-compose -f docker-compose.ci.build.yml run ci-build
```

```
$ docker build -t webapp:docker-compose WebApp/
```


```
$ docker image ls

REPOSITORY                   TAG                 IMAGE ID            CREATED             SIZE
webapp                       latest              18734e75211f        4 minutes ago       303MB
microsoft/aspnetcore-build   1.0-1.1             1f483d22366c        5 weeks ago         1.28GB
microsoft/aspnetcore         1.1                 2628aaa7b8cf        7 weeks ago         288MB
```

```
$ docker run -it -p80:80 webapp
```

```
$  docker build -f .\Dockerfile.MultiStage -t webapp:multistage .
```