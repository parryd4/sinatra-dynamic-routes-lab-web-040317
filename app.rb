require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @number = params['number'].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    shenanigan = []
    @num.times do shenanigan << @phrase end
    shenanigan.join("\n")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:captures].join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @x = params[:number1].to_i
    @y = params[:number2].to_i

    if params[:operation] == "add"
      "#{@x + @y}"
    elsif params[:operation] == "subtract"
      "#{@x - @y}"
    elsif params[:operation] == "multiply"
      "#{@x * @y}"
    elsif params[:operation] == "divide"
      "#{@x / @y}"
    end
  end

end
