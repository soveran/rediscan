class Rediscan
  def initialize(redis)
    @redis = redis
    @cursor = "0"
  end

  def each(match: nil, count: nil, &block)
    done = false
    args = []
    args.push("MATCH", match) if match
    args.push("COUNT", count) if count

    until done
      @cursor, keys = @redis.call("SCAN", @cursor, *args)
      done = @cursor == "0"

      keys.each(&block)
    end
  end
end
