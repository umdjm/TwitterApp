ENV["REDISTOGO_URL"] ||= "redis://redistogo:ae8787ede284f9d505663b66e0fdd81b@herring.redistogo.com:10107/"

uri = URI.parse(ENV["REDISTOGO_URL"])
Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password, :thread_safe => true)