require 'sinatra/base'
require_relative 'turn'
require_relative 'opponent'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb(:play)
  end

  post '/play' do
    session[:shape] = params[:shape].downcase.to_sym
    session[:opposition_shape] = Opponent.new.shape
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
