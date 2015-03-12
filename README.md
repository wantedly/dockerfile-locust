# Locust Docker Image [![Docker Repository on Quay.io](https://quay.io/repository/wantedly/locust/status "Docker Repository on Quay.io")](https://quay.io/repository/wantedly/locust)
Docker Image for [Locust](http://locust.io/).
Please see [the official site](https://github.com/ryotarai/infrataster/) or [Github repository](https://github.com/locustio/locust) for more information about Locust.

## SUPPORTED TAGS

* `latest`
 * Python 2.7.7
 * Locust 0.7.2

## HOW TO USE

```bash
# Get the docker image
$ docker pull quay.io/wantedly/locust

# Prepare feature spec files
$ ls test
locustfile.py

# Run feature tests
$ docker run \
    -v $PWD/test:/test/ \
    quay.io/wantedly/locust \
    -f /test/locustfile.py \
    -H http://example.com
```

## LICENSE
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
