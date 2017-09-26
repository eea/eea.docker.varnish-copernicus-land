copernicus-land Varnish image
=============================

[![Docker]( https://dockerbuildbadges.quelltext.eu/status.svg?organization=eeacms&repository=varnish-copernicus-land)](https://hub.docker.com/r/eeacms/varnish-copernicus-land/builds)

### Prerequisites

* Install [Docker](https://docs.docker.com/engine/installation/)
* Install [Docker Compose](https://docs.docker.com/compose/install/)

### Installation

1. Get the source code:

        $ git clone https://github.com/eea/eea.docker.varnish-copernicus-land
        $ cd eea.docker.varnish-copernicus-land

2. Build and run the image locally:

        $ docker build -t varnish:local .
        $ docker run varnish:local
