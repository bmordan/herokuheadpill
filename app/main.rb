env = ENV["RACK_ENV"] || "development"

require 'sinatra'
require 'data_mapper'
require 'rack-protection'

if ENV["RACK_ENV"] == "production"
  DataMapper.setup(:default, ENV["DATABASE_URL"])
else
  DataMapper.setup(:default, "postgres://localhost/headpill_#{env}")
end
DataMapper.finalize
DataMapper.auto_upgrade!
use Rack::Protection::EscapedParams

get '/' do
  "Hello World"
end