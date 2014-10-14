ENV["RACK_ENV"] = "test"

require_relative "../app/main"

Capybara.app = Sinatra::Application.new