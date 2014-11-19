require 'redis'
require 'json'

class Azon

  def self.subscribe(channel, msg_handler)
    redis = Redis.new
    Thread.new {
      redis.subscribe(channel) do |on|
        on.message do |chan, msg|
          msg_handler.call(msg)
        end
      end
    }
  end

  def self.publish(channel, msg)
    redis = Redis.new
    redis.publish(channel, msg.to_s)
    redis.quit
  end
end