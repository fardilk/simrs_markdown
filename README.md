# my-mkdocs

# Deployment
* Build parent image
  ```shell
  docker build -t sim-doc-parent:1.0 -f Dockerfile-parent .
  ```
* Build image
  ```shell
  docker build -t sim-doc:1.0 .
  ```
* Run as a docker container
  ```shell
  docker run --rm -it -p 8002:8080 sim-doc:1.0
  ```

# Local Deployment
```shell
mkdocs serve --dev-addr=0.0.0.0:8000
```
* server: `dvlp.sismedika.online:8000`

# MISC
* [Set password protected site](https://www.lcn.com/support/articles/how-to-password-protect-a-folder-on-your-website-with-htaccess/)
  * [Alt ref](https://help.dreamhost.com/hc/en-us/articles/216363187-Password-protecting-your-site-with-an-htaccess-file)
  * Install
    ```shell
    sudo apt install apache2-utils
    ```
  * Create `.htpasswd` file for user `sismedika`
    ```
    htpasswd -c .htpasswd sismedika
    ```
    * passwd: `s1SmEdikAno1`
  * Then, input password, for example:
    ```
    LGiCBkOCg2nraagF2tIQ
    ```
* [install sshpass](https://gist.github.com/arunoda/7790979)
  ```shell
  sudo apt-get install -y sshpass
  ```
* SSH Tunneling / Port forwarding
  ```shell
  bash start-port-forward.sh -i IP-or-DOMAIN -u USER -p PASSWORD
  ```
