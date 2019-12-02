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
    @num = params[:number].to_i
    "#{@num**2}"

  end

end
