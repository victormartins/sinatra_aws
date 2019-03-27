require 'sinatra/base'
require "sinatra/reloader"

class AWSApp < Sinatra::Application
  set :sessions, true
  set :bind, '0.0.0.0'
  set :port, 8080

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    respond_with :index, :request_method => 'GET' do |f|
      erb :index
    end
  end
end