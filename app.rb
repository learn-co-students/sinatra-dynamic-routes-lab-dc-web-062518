require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i ** 2
    @number.to_s

  end

  get '/say/:number/:phrase' do
    arr = []
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @number.times do
      arr << @phrase
    end
    arr
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @say = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    case @operation
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1/@num2}"
    when 'add'
      "#{@num1 + @num2}"
    else
      "#{@num1 - @num2}"
    end
  end

end
