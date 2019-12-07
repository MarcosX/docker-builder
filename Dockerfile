FROM alpine:3.10
LABEL maintainer=MarcosX
ENV HADOLINT_VERSION 1.17.3
ENV TRIVY_VERSION 0.2.1

RUN apk add --no-cache docker

RUN wget https://github.com/hadolint/hadolint/releases/download/v${HADOLINT_VERSION}/hadolint-Linux-x86_64 -O hadolint && \
      chmod +x hadolint && \
      mv hadolint /usr/local/bin
RUN wget https://github.com/aquasecurity/trivy/releases/download/v${TRIVY_VERSION}/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz && \
      tar zxvf trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz && \
      mv trivy /usr/local/bin
