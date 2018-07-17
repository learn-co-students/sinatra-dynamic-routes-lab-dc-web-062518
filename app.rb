require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get "/square/:number" do
    @num1 = params[:number].to_i
    @num2 = params[:number].to_i
    @answer = @num1 * @num2
    @answer.to_s
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    return_phrase = ""
    @num.times do
      return_phrase += "#{@phrase}"
    end
    return_phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
     "#{@num1 + @num2}"
   elsif @operation == "subtract"
     "#{@num1 - @num2}"
   elsif @operation == "multiply"
     "#{@num1 * @num2}"
   elsif @operation == "divide"
     "#{@num1 / @num2}"
   end
    # @add = ("#{@num1} #{params[:operation]} #{@num2}").to_i
    # @add.to_s
    # @substract = @num1 - @num2
    # @multiply = @num1 * @num2
    # @divide = @num1 / @num2
    # @substract.to_s
    # @multiply.to_s
    # @divide.to_s
  end

end
