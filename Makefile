buildlocal:
	hadolint Dockerfile && \
		docker build . -t local/docker-builder

#testlocal:
#	docker build . -f Dockerfile.test -t local/test && \
#		docker run -d -p 3000:3000 local/test
