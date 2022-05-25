# Deploy Jenkins On Container-Level

### How To Install Docker In Jenkins Container

#### docker needs to be installed on your host machine (maybe local or on the cloud. This machine is a Linux machine)



![dockerJenkins](https://user-images.githubusercontent.com/103893307/170216869-2dd591f7-90c1-4c77-b5c5-d150377e5257.png)

#### use below CMD's to deploye jenkins on docker container

```
docker run -p 8080:8080 -p 50000:50000 -d -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
```

```
sudo docker ps -a
```

```
docker exec -it --user root <container id> bash
```

```
curl https://get.docker.com/ > dockerinstall && chmod 777 dockerinstall && ./dockerinstall
```

```
sudo chmod 666 /var/run/docker.sock
```

##### Finally, Docker has been installed inside of the Jenkins container!

```
localhost:8080 
```

or

```
<ip_add>:8080
```

##### for credntials use below CMD

```
docker exec -it <container id> bash
```

```
cat var/jenkins_home/secrets/initialAdminPassword
```




