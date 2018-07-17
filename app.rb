require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "Hello World"
  end

  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @num1 = params[:number].to_i
    @num2 = params[:number].to_i
    "#{@num1 * @num2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    return_phrase = ""
    @num.times do
      return_phrase += "#{@phrase}"
    end
    return_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
      "#{@num2 - @num1}"
    elsif @operation == "multiply"
      "#{@num1 * @num2}"
    else @operation == "divide"
      "#{@num1 / @num2}"
    end
  end

end
