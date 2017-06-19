# twitter_favorites

Archive all favorites/likes from your Twitter account.

# Dependencies

* ruby
* bundler
* `t` (via Ruby Gems)

* python
* pip
* `twarc` (via pip)

# Configuration

## Environment

## Ruby

```
bundle install
```

## `t`

`t` needs a configuration file:

```
~/.trc
```

which can be generated via interactive prompt:

```
t authorize
```

## Python

```
sudo pip install -r requirements.txt
```

## twarc

We configure `twarc` via the following environment variables:

```
CONSUMER_KEY
CONSUMER_SECRET
ACCESS_TOKEN
ACCESS_TOKEN_SECRET
```

# Usage

```
t favorites --csv --number 3200 > data/favorites.csv
```

```
t favorites --csv --number 3200 --decode_uris > data/favorites_with_decoded_uris.csv
```


