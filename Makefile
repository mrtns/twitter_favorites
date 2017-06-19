.PHONY check-dependencies run:

check-dependencies:
	docker --version

run:
	docker run \
		-it --rm \
		-p 8888:8888 \
		--volume $PWD/data/jupyter:/home/jovyan/work \
		-e GRANT_SUDO=yes \
		--user root \
		jupyter/all-spark-notebook