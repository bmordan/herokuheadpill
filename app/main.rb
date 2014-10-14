env = ENV["RACK_ENV"] || "development"

require 'sinatra'
require 'data_mapper'
require 'rack-protection'

get '/' do
  "Hello World"
end