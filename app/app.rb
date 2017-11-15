ENV['RACK_ENV'] ||= 'development'

require_relative 'models/link'
require 'sinatra/base'

class App < Sinatra::Base
  get '/links' do
    erb(:links, locals: { links: Link.all })
  end

  post '/links' do
    Link.create(name: params[:Name], url: params[:URL])
    redirect '/links'
  end

  get '/links/new' do
    erb(:newlink)
  end

  run! if app_file == $0
end
