# Installing Weblate with docker-compose.

## Quick Installation

**Before starting the instance, direct the domain (subdomain) to the ip of the server where OpenLDAP+PhpLdapAdmin will be installed!**

## 1. OpenLDAP+PhpLdapAdmin Server Requirements
From and more
- 2 CPUs
- 2 RAM 
- 10 Gb 

Run for Ubuntu 22.04

``` bash
sudo apt-get purge needrestart
```

## 2.Install docker and docker-compose:

``` bash
curl -s https://raw.githubusercontent.com/6Ministers/weblate-docker-compose-for-application-translations/master/setup.sh | sudo bash -s
```

## 3.Download Weblate instance:


``` bash
curl -s https://raw.githubusercontent.com/6Ministers/weblate-docker-compose-for-application-translations/master/download.sh | sudo bash -s weblate
```

If `curl` is not found, install it:

``` bash
$ sudo apt-get install curl
# or
$ sudo yum install curl
```

Go to the catalog

``` bash
cd weblate
```

Change the data in docker-compose.yml




## 5.Run Weblate:

``` bash
docker-compose up -d
```

Then open `https://weblate.domain.com:` to access Weblate


Access data

``` bash
Login: 
Password: 
```


## Weblate container management

**Run**:

``` bash
docker-compose up -d
```

**Restart**:

``` bash
docker-compose restart
```

**Restart**:

``` bash
sudo docker-compose down && sudo docker-compose up -d
```

**Stop**:

``` bash
docker-compose down
```

## Documentation
