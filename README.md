# LiUPS

## The Lixin Universal Proxy Server
LiUPS is a Docker-Nginx based server,
that provides reverse proxy for deploying your https sites.

## Service Provided
- [ ] FTP server
- [x] Nginx server
- [x] MySQL Server
- [x] PhpMyAdmin
- [x] Let's Encrypt SSL auto deploy.

## Usage
1. First and for most, clone this repo:
    ```shell script
    git clone https://github.com/Great-Li-Xin/LiUPS.git
    cd LiUPS
    ```
1. Edit `.conf/nginx/app.conf`:
    ```shell script
    vim .conf/nginx/app.conf
    ```
1. Edit `init_letsencrypt.sh`:
    ```shell script
    vim init_letsencrypt.sh
    ```
1. Create `.env-mysql`:
    ```shell script
    touch .env-mysql
    vim .env-mysql
    ```
    > This is a super simple template:
    > ```text
    > MYSQL_ROOT_PASSWORD=< Your Password >
    > ```
1. Run `init_ubuntu_dokcer_ce.sh` then take a reboot:
    ```shell script
    ./init_ubuntu_dokcer_ce.sh
    reboot
    ```
1. After reboot, cd back to the `LiUPS` repo:
    ```shell script
    # Read carefully! You should enter the path manually, instead of just copying the following code and run.
    cd /path/to/LiUPS
    ```
1. Run `init_letsencrypt.sh` and let it obtain and deploy ssh for your website that you have configured in this script:
    ```shell script
    ./init_letsencrypt.sh
    ```
1. Finally run `post_reboot.sh`:
    ```shell script
    ./post_roboot.sh
    ```
1. Now you are ready to go.
    > If you reboot your server, be sure to run `post_reboot.sh` so that you won't kill your service by accident.