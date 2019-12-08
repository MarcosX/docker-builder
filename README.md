[![CircleCI](https://circleci.com/gh/MarcosX/docker-builder.svg?style=svg)](https://circleci.com/gh/MarcosX/docker-builder)

# docker-builder

Docker image with all the tools to build other docker images ᕕ( ᐛ )ᕗ

This image includes:

[Hadolint](https://github.com/hadolint/hadolint) for linting Dockerfiles

[Trivy](https://github.com/aquasecurity/trivy) to scan for CVEs

[Inspec](https://github.com/inspec/inspec) to run tests

By using this image you accept the licenses for Chef Inspec and [Habitat](habitat.sh).
Refer to their official pages for more information.

# Build and test locally

```
make buildlocal # creates a local/docker-builder image
make testlocal # runs a container and then inspec tests
```

CVEs are checked with [Trivy](https://github.com/aquasecurity/trivy) and applicable baseline
tests are run using [DevSec Linux Baseline](https://github.com/dev-sec/linux-baseline) and
[DevSec CIS Docker Benchmark](https://github.com/dev-sec/cis-docker-benchmark)

# TODO

* Publish development version of image
* PUblish tagged version of the image
