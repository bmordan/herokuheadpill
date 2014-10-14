env = ENV["RACK_ENV"] || "development"

require 'sinatra'
require 'data_mapper'
require 'rack-protection'

ENV["RACK_ENV"] == "production" ? DataMapper.setup(:default, ENV["DATABASE_URL"]) : DataMapper.setup(:default, "postgres://localhost/headpill_#{env}")

get '/' do
  "Hello World"
end