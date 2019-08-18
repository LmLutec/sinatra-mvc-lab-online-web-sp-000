require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    @user_input = params[:user_phrase]
    erb :user_input 
  end 
  
  post '/piglatinize' do
    @user_input = Piglatinizer.new(params[:user_phrase])
    erb :piglatinize
  end 
end