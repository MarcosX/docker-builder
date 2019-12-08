buildlocal:
	hadolint Dockerfile && \
		docker build . -t local/docker-builder

testlocal:
	inspec exec linux-baseline-2.3.0 cis-docker-benchmark-2.1.0 --no-distinct-exit -t \
		docker://$$(docker run --name local-test -it --rm -d local/docker-builder sh) && \
		docker stop local-test
