require 'sinatra/base'
require 'shotgun'
require_relative './lib/player.rb'

class MyApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    # p params
    # @name = params[:name]
    # @name2 = params[:name2]
    session[:name] = params[:name]
    session[:name2] = params[:name2]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @name2 = session[:name2]
    # @player1_hit = 0
    # @player2_hit = 0
    erb(:play)
  end

  post '/attack' do
    erb(:attack)
  end


  run! if app_file == $0
end
