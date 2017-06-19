# twitter_favorites

Archive all favorites/likes from your Twitter account.

# Dependencies

* ruby
* bundler
* `t` (via Ruby Gems)

# Configuration

## Environment

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



# Usage

```
t favorites --csv --number 3200 > data/favorites.csv
```

```
t favorites --csv --number 3200 --decode_uris > data/favorites_with_decoded_uris.csv
```
