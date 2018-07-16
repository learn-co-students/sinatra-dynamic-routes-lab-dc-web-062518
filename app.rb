require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @rev_name = params[:name].reverse
    "#{@rev_name}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    arr = []
    @num = params[:number].to_i
    @str = params[:phrase].split("%20").join(" ")
    @num.times do
      arr << @str
    end
    "#{arr}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    @r = 0
    if @op == "add"
      @r = @n1 + @n2
    elsif @op == "subtract"
      @r = @n1 - @n2
    elsif @op == "multiply"
      @r = @n1 * @n2
    elsif @op == "divide"
      @r = @n1 / @n2
    end
    "#{@r}"
  end
end
