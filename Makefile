buildlocal:
	hadolint Dockerfile && \
		docker build . -t local/docker-builder

testlocal:
	inspec exec https://github.com/dev-sec/linux-baseline -t docker://$$(docker run -it --rm -d local/docker-builder sh)
