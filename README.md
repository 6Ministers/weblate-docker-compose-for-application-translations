# Installing Weblate with docker-compose.

## Quick Installation

**Before starting the instance, direct the domain (subdomain) to the ip of the server where Weblate will be installed!**

## 1. Weblate Server Requirements
From and more
- 2 CPUs
- 3 RAM 
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

To change the domain in the `Caddyfile` to your own

``` bash
https://weblate.your-domain.com:443 {
    reverse_proxy :8080
	# tls admin@example.org
    encode zstd gzip
    file_server
}
```

Change the data in `environment`

``` bash
WEBLATE_ADMIN_EMAIL=weblate@example.com # change to your email (login)
WEBLATE_ADMIN_PASSWORD=password # change to your password
WEBLATE_SITE_DOMAIN=your-domain.com # change to your domain
```
And SMTP
``` bash
# Mail server, the server has to listen on port 587 and understand TLS
WEBLATE_EMAIL_HOST=smtp.beget.com
# Do NOT use quotes here
WEBLATE_EMAIL_HOST_USER=weblate@planet596.site
# Do NOT use quotes here
WEBLATE_EMAIL_HOST_PASSWORD=r@1s5cS9ns7RvdP&
```
Email
``` bash
WEBLATE_SERVER_EMAIL=weblate@domain.com
WEBLATE_DEFAULT_FROM_EMAIL=weblate@domain.com
```

## 4.Run Weblate:

``` bash
docker-compose up -d
```

Then open `https://weblate.domain.com:` to access Weblate


Access data

``` bash
Login: weblate@example.com
Password: password
```


## Weblate container management

**Run**:

``` bash
sudo docker-compose up -d
```

**Restart**:

``` bash
sudo docker-compose restart
```

**Restart**:

``` bash
sudo docker-compose down && sudo docker-compose up -d
```

**Stop**:

``` bash
sudo docker-compose down
```

## Documentation
https://weblate.org/ru/

https://docs.weblate.org/en/latest/admin/install/docker.html

https://github.com/WeblateOrg/docker-compose

