require_relative 'config/environment'

class App < Sinatra::Base

# Create a dynamic route at get '/reversename/:name' that accepts a name
# and renders the name backwards.
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

end
