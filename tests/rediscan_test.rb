require_relative "../lib/rediscan"

REDIS_URL = "redis://localhost:6379/3"

prepare do
  Redic.new(REDIS_URL).call("FLUSHDB")
end

setup do
  c = Redic.new(REDIS_URL)
  s = Rediscan.new(c)

  [c, s]
end

test do |c, s|
  assert_equal 0, c.call("DBSIZE")

  c.call("SET", "ost:1", "1")

  s.each(match: "ost:*", count: 10) do |key|
    assert_equal "ost:1", key
  end
end
