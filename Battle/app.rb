require 'sinatra/base'
require 'shotgun'
require_relative './lib/player.rb'

class MyApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player1 = Player.new(params[:name])
    $player2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/play' do
    @name = $player1.name
    @name2 = $player2.name
    @hit_points = $player1.hit_points
    @hit_points2 = $player1.hit_points
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    @player2.attacked
    erb(:attack)
  end





  run! if app_file == $0
end
