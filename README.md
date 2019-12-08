[![CircleCI](https://circleci.com/gh/MarcosX/docker-builder.svg?style=svg)](https://circleci.com/gh/MarcosX/docker-builder)

# docker-builder
Docker image with all the tools to build other docker images

CVEs are checked with [Trivy]() and baseline tests are run using
[DevSec Linux Baseline](https://github.com/dev-sec/linux-baseline) and
[DevSec CIS Docker Benchmark](https://github.com/dev-sec/cis-docker-benchmark)

# Build and test locally

```
make buildlocal # creates a local/docker-builder image
make testlocal # runs a container and then inspec tests
```

# TODO

* Run CIS Docker benchmark in the pipeline
* Publish development version of image
* Test with sample Dockerfile
* PUblish tagged version of the image
