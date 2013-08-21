require "bundler"
Bundler.require :default, :environment

get '/hi' do
  "Hello World!"
end