# Private Debian Repository Hosted on GitHub

Refer to [this article](https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html)

## Prerequisites

Install `gnupg` and `dpkg-dev`

```shell
sudo apt-get install -y gnupg dpkg-dev
```

Import GPG secret key

```shell
gpg --import /path/to/your/secret.key
```
