require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @reversedname = @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i*@number.to_i}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @sentence = ""
    @number.to_i.times do
      @sentence += @phrase
    end
    @sentence
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @sentence = @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1]
    @num2 = params[:number2]
    @operation = params[:operation]
      if @operation == "add"
        @total = "#{@num1.to_i + @num2.to_i}"
      elsif @operation == "subtract"
        @total = "#{@num1.to_i - @num2.to_i}"
      elsif @operation == "multiply"
        @total = "#{@num1.to_i * @num2.to_i}"
      else
        @total = "#{@num1.to_i / @num2.to_i}"
      end
      @total
  end

end