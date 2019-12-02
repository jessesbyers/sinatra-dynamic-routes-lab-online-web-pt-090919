require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number]
    "#{(@num.to_i**2).to_s}"
  end

  # Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase
  #  and returns that phrase in a single string the number of times given.

  get "/say/:number/:phrase" do
    @num = params[:number]
    @phrase = params[:phrase]
    ()@num.to_i).times do
      "#{@phrase}"
    end
  end

end
