require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do 
    @num = params[:number].to_i
    @result = @num * @num
    "#{@result}"
  end

  get "/say/:number/:phrase" do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @arr = []
    @num.times do 
      @arr << @phrase
    end
    "#{@arr}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @result = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
    "#{@result}."
  end

  get "/:operation/:number1/:number2" do 
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
      "#{@num2 - @num1}"
    elsif @operation == "multiply"
      "#{@num2 * @num1}"
    else
      "#{@num1 / @num2}"
    end
  end

end