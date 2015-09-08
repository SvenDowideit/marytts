
run: release
	docker run --rm -it -o 80:80 marytts

release:
	docker build -t marytts - < Dockerfile.release

shell: release
	docker run --rm -it --entrypoint bash marytts
	
