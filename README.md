# twitter_favorites

Export all favorites/likes from your Twitter account, and analyze them.

# Implementation Notes

* Experimenting with building a data pipeline via a series of Dockerized Jupyter notebooks

Next steps:

* Make assertion verification executable; change assertions to use bats or python unit tests


# Dependencies

## Environment

```bash
make check-dependencies
```

## Configuration

### Twitter (OAuth) Application

TODO

### `t` Configuration File

TODO

```bash
t configure
```

# Pipeline

1. [TweetFavorited_SummaryWithDecodedUrls](data/jupyter/TweetFavorited_SummaryWithDecodedUrls.ipynb)
1. [TweetFavorited_RawTweetObject](data/jupyter/TweetFavorited_RawTweetObject.ipynb)
1. TODO

Next steps:

1. Build analysis steps

# Running

## Jupyter

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
