require 'sinatra/base'
require 'shotgun'

class MyApp < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    p params
    @name = params[:name]
    erb(:play)
  end


 run! if app_file == $0
end
