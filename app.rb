require "yaml"
require "bundler"
Bundler.require :default, :environment

before do
	# Before you go, you may want to configure these.
	@author = "Aaron Weiss"
	# @home = "main site address"
	# @analytics_id = "Google Analytics campaign id"
	# @analytics_dm = "Google Analytics domain"
end

get '/' do
	yaml = YAML.load_file "books.yml"
	@books = yaml["books"]
	erb :index
end

get '/clear' do
	cache_clear
	redirect to('/')
end

get "/css/bibliome.css" do
	scss :bibliome
end

get "/back" do
	redirect to(@home)
end