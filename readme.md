# nginx proxy for local development with ssl

Based on [this article](https://francoisromain.medium.com/set-a-local-web-development-environment-with-custom-urls-and-https-3fbe91d2eaf0)

## What?

Pairs with the [WordPress Docker](https://github.com/sleepingkiwi/wordpress-docker) repo for easier local development with ssl certificates.

## setup/first usage

This normally lives alongside all dev projects. i.e. at the root of a `~/dev` directory

🔥 Before first run the local network needs to be created by running

``` bash
docker network create nginx-proxy
```

After that you can bring this up using `docker-compose up` as normal

### Set up an ssl cert for a local domain

> If this is the first time setting up a cert:

#### Set up a local Cerificate Authority (CA)

_You only need to do this step once_ - if you already have one then you don't need another for each site.

- install `mkcert`
  - on macos that's `brew install mkcert` and `brew install nss`
- run `mkcert -install`

> If yoy already have a local CA set up:

#### Make self signed SSL certs for your local domain and put them in the ./certs dir

``` bash
# cd into the ./certs dir at the root of this repo
mkcert -cert-file example-site.local.crt -key-file example-site.local.key example-site.local
```
