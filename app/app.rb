require_relative 'models/link'
require 'sinatra/base'

class App < Sinatra::Base
  get '/links' do
    erb(:links, locals: { links: Link.all })
  end
end
