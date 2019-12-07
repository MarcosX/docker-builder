FROM alpine:3.10
LABEL maintainer=MarcosX
ENV HADOLINT_VERSION 1.17.3
ENV TRIVY_VERSION 0.2.1
ENV INSPEC_VERSION 4.18.39

# Address validations for https://dev-sec.io/baselines/linux/
RUN chmod 600 /etc/shadow && \
      touch /etc/login.defs 

# Install hadolint
RUN wget https://github.com/hadolint/hadolint/releases/download/v${HADOLINT_VERSION}/hadolint-Linux-x86_64 -O hadolint && \
      chmod +x hadolint && \
      mv hadolint /usr/local/bin

# Install trivy
RUN wget https://github.com/aquasecurity/trivy/releases/download/v${TRIVY_VERSION}/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz && \
      tar zxvf trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz && \
      mv trivy /usr/local/bin

# Install inspec
RUN wget https://api.bintray.com/content/habitat/stable/linux/x86_64/hab-%24latest-x86_64-linux.tar.gz?bt_package=hab-x86_64-linux -O hab.tgz && \
      tar -xvzf hab.tgz -C /usr/local/bin --strip-components 1 && \
      hab license accept && \
      hab pkg install chef/inspec --binlink
