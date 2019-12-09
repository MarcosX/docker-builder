build_local:
	hadolint Dockerfile && \
		docker build . -t local/docker-builder

test_local:
	$$(docker stop local-test || true) && \
		inspec exec test --no-distinct-exit -t \
		docker://$$(docker run --name local-test -it --rm -d local/docker-builder sh) && \
		docker stop local-test

test_all:
	$$(docker stop local-test || true) && \
	inspec exec test linux-baseline-2.3.0 cis-docker-benchmark-2.1.0 --no-distinct-exit -t \
		docker://$$(docker run --name local-test -it --rm -d local/docker-builder sh) && \
		docker stop local-test
