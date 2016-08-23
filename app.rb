require 'sinatra'
require 'redis'
require 'rack_health_check'

use RackHealthCheck::Checker

RackHealthCheck.config.strategies = [
  RackHealthCheck::Strategy::HttpChecker,
  RackHealthCheck::Strategy::RedisChecker
]

get '/' do
  'Hello World'
end
