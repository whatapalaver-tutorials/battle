require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions 
  # keeps state during requests

  get '/' do
    erb :index
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    erb :attack
  end

  post '/attack' do
    @game = $game
    @game.attack(@game.next_player)
    if $game.game_over?
      redirect '/game-over'
    else
    redirect '/attack'
    end
  end

  get '/game-over' do
    @game = $game
    erb :game_over
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect '/play'
  end

  #start the server if ruby file executed directly
  run! if app_file == $0
end