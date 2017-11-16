ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './app/datamapper_config'

class App < Sinatra::Base
  get '/links' do
    erb(:links, locals: { links: Link.all })
  end

  post '/links' do
    link = Link.new(name: params[:Name], url: params[:URL])
    tag = Tag.new(name: params[:tag])
    link.tags << tag
    link.save
    redirect '/links'
  end

  get '/links/new' do
    erb(:newlink)
  end

  run! if app_file == $0
end
