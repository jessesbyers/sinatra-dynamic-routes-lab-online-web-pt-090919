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

  get "/say/:number/:phrase" do
    @num = params[:number]
    @phrase = params[:phrase]
    str = ""
    (1..@num.to_i).each {str += @phrase}
    "#{str}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    str = "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."

  end
  

end
