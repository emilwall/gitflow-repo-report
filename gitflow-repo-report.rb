require 'sinatra'
require 'git'
require_relative 'models/report.rb'
require_relative 'report-repository.rb'

set :erb, :layout => :'layouts/default'

get '/' do 
	@report = ReportRepository.latest
	erb :report
end

get '/list/' do
	erb :list
end

get '/generate/' do
	erb 'generating new report...'
end