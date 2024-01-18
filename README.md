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
WEBLATE_EMAIL_HOST=
# Do NOT use quotes here
WEBLATE_EMAIL_HOST_USER=weblate@domain.com
# Do NOT use quotes here
WEBLATE_EMAIL_HOST_PASSWORD=
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

# Setting up a translation project

![Screenshot_117](https://github.com/6Ministers/weblate-docker-compose-for-application-translations/assets/11208423/0a79bdf0-4450-4dc4-a6e3-bd43712e7760)

1. Project name
2. Translation site (some kind of your site)
3. Save

![Screenshot_118](https://github.com/6Ministers/weblate-docker-compose-for-application-translations/assets/11208423/f367dfb0-a680-42ee-951b-be4e9a18baa3)


![Screenshot_119](https://github.com/6Ministers/weblate-docker-compose-for-application-translations/assets/11208423/67a796af-a9c4-4910-a6c1-2476974790c5)

4. The name of the project translation branch
5. Repository of the translation source code
6. Translation source code branch
7. Continue

![Screenshot_120](https://github.com/6Ministers/weblate-docker-compose-for-application-translations/assets/11208423/71dfa09e-2a17-436b-a8d4-898852ad4568)

8. Choosing your own mask
![Screenshot_121](https://github.com/6Ministers/weblate-docker-compose-for-application-translations/assets/11208423/04daf3bf-0ba9-422c-ab01-775945ea618d)

9. Repository of the translation source code `https://gitlab.com/flectra-hq/flectra.git`
10. Translation source code branch `3.0`
11. Repository for saving the translation `your repository` to save. First, you need to make a fork of the translation source.
12. The branch for saving the transfer with the login and password of the gitlab token (you must first do it in gitlab)
13. Choice po-file gettext
14. Mask for your translation language `addons/*/i18n/ru.po`

![Screenshot_124](https://github.com/6Ministers/weblate-docker-compose-for-application-translations/assets/11208423/131ab8a6-763d-4255-989e-2b6c478b21f5)

15. Prohibit the addition of new translations (if you translate only one language)
16. Save and start scanning the source repository and creating your project in Weblate
![Screenshot_123](https://github.com/6Ministers/weblate-docker-compose-for-application-translations/assets/11208423/a4f514ac-2813-4fac-9b11-f61ed9e489e4)

