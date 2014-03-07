Rediscan
========

Scanner for Redis keyspace

Description
-----------

Rediscan lets you iterate over the Redis keyspace and execute a
block for each match.

Usage
-----

You need to suply a Redis client. There are no restrictions
regarding the type of the Redis client, but it must respond to
`call` and the signature must be identical to that of
[Redic][redic].

```ruby
r = Rediscan.new(Redic.new)
```

Once you have the `Rediscan` instance, you can use it as follows:

```ruby
r.each do |key|
  # Do something with `key`
end
```

You can also provide `match` and `count` arguments:

```ruby
r.each(match: "ost:*", count: 4) do |key|
  # Do something with `key`
end
```

For the meaning for `match` and `count`, check the documentation
for the [SCAN command][scan]

## Installation

You can install it using rubygems.

```
$ gem install rediscan
```

[redic]: https://github.com/amakawa/redic
[scan]: http://redis.io/commands/scan
