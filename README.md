# PyTexas Docker

The pytexas.org website, dockerized.

# Setup

0. Install [Docker](https://docs.docker.com/install/)
0. Install [docker-compose](https://docs.docker.com/compose/install/)
0. Clone the necessary repos:
    * `git clone git@github.com:pytexas/PyTexasBackend.git`
    * `git clone git@github.com:pytexas/PyTexas2019.git`
    * `git clone git@github.com:pizzapanther/Django-Conference.git`
0. `docker-compose up`
0. Visit <http://localhost:8000>

## Weirdness

The dependencies for the backend are included in this repo as `requirements.in`
and `requirements.txt` because pipenv is overkill for dependencies inside
Docker containers.

To rebuild the `requirements.txt` file after modifying `requirements.in`:

```
$ pip install pip-tools
$ pip-compile requirements.in
```
