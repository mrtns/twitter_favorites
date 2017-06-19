# twitter_favorites

Archive all favorites/likes from your Twitter account.

# Dependencies

```bash
make check-dependencies
```

# Running

```bash
make run
```

will execute the `jupyter/all-spark-notebook` image with a mounted local data volume.

There is currently [a bug](https://github.com/jupyter/docker-stacks/issues/400) in `start.sh` which requires a manual work around.

On a fresh image:

```bash
docker run -it --rm -p 8888:8888 --volume $PWD/data/jupyter:/home/jovyan/work -e GRANT_SUDO=yes --user root jupyter/all-spark-notebook /bin/bash
vim /usr/local/bin/start.sh
# comment out the line introduced in https://github.com/jupyter/docker-stacks/commit/4947f58181ff3c6747e9697b57830895a90c6cbd
/usr/local/bin/start-notebook.sh
```

On an existing image that has already started one or more times: 

```bash
vim /usr/local/bin/start.sh
# comment out the line introduced in https://github.com/jupyter/docker-stacks/commit/4947f58181ff3c6747e9697b57830895a90c6cbd
visudo
# change `includedir` to `#includedir` in `/etc/sudoers`
/usr/local/bin/start-notebook.sh
```