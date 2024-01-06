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

Change the data in `environment`

``` bash
WEBLATE_ALLOWED_HOSTS=your-domain.com
WEBLATE_ADMIN_PASSWORD=your-password
```

## 4.Run Weblate:

``` bash
docker compose -f docker-compose-https.yml up -d
```

Then open `https://weblate.domain.com:` to access Weblate


Access data

``` bash
Login: Weblate Admin
Password: password
```


## Weblate container management

**Run**:

``` bash
docker compose -f docker-compose-https.yml up -d
```

**Restart**:

``` bash
docker-compose-https restart
```

**Restart**:

``` bash
sudo docker compose -f docker-compose-https.yml down -d && sudo docker compose -f docker-compose-https.yml up -d
```

**Stop**:

``` bash
docker compose -f docker-compose-https.yml down
```

## Documentation
https://weblate.org/ru/

https://docs.weblate.org/en/latest/admin/install/docker.html

https://github.com/WeblateOrg/docker-compose

