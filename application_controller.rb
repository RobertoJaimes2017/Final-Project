require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  
  post '/click' do
   name_button=params[:spinner]
    puts name_button
   @result=choose_button(name_button)
   erb :results 
    
  end
  
  
end