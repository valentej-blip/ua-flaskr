# Masterclass UA
In order to build and run the Jenkins image, please run these commands in your terminal, inside this root folder:

```
docker build -f jenkinsdind.Dockerfile -t local-jenkins .
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -p 8081:8080 local-jenkins
```
