buildlocal:
	hadolint Dockerfile && \
		docker build . -t local/docker-builder

testlocal:
	inspec exec linux-baseline-2.3.0 -t docker://$$(docker run -it --rm -d local/docker-builder sh)
