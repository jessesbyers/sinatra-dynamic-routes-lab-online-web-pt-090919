require_relative 'config/environment'

class App < Sinatra::Base

# Create a dynamic route at get '/reversename/:name' that accepts a name
# and renders the name backwards.
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  # Create a dynamic route at get '/square/:number' that accepts a number and returns
  # the square of that number.
  # Note: Remember that values in params always come in as strings,
  # and your return value for the route should also be a string (use .to_i and .to_s).

  get "/square/:number" do
    @num = params[:number]
    "#{(@num.to_i**2).to_s}"
  end

  # Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase
  #  and returns that phrase in a single string the number of times given.

  get "/say/:number/:phrase" do
    @num = params[:number]
    @phrase = params[:phrase]
    @num.to_i times do
      "#{@phrase}"
    end
  end

end
