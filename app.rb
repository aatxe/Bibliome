require "bundler"
Bundler.require :default, :environment

require 'sinatra'

get '/hi' do
  "Hello World!"
end