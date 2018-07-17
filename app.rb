require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @repeat = params[:phrase]
    @number = params[:number].to_i
    @a = []
      @number.times do
        @a << @repeat
      end
        "#{@a}"
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    end

    get '/:operation/:number1/:number2' do
      @addition = params[:number1].to_i + params[:number2].to_i
      @subtraction = params[:number2].to_i - params[:number1].to_i
      @multiplication = params[:number1].to_i * params[:number2].to_i
      @division = params[:number1].to_i / params[:number2].to_i
      @op = params[:operation]

      if @op == "add"
        "#{@addition}"
      elsif @op == "subtract"
        "#{@subtraction}"
      elsif @op == "multiply"
        "#{@multiplication}"
      elsif @op == "divide"
        "#{@division}"
      end
    end
end
