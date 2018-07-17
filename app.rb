require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    return_phrase = ""
    @number.times do
      return_phrase+= "#{@phrase}"
    end
    return_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1}"+" #{@word2}"+" #{@word3}"+" #{@word4}"+" #{@word5}"+"."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@num1+@num2}"
    elsif params[:operation] == "subtract"
      "#{@num2-@num1}"
    elsif params[:operation] == "multiply"
      "#{@num2*@num1}"
    else
      "#{@num1/@num2}"
    end

  end





end
