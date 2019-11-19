require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name]
    @reverse = @name.reverse
    "#{@reverse}"
  end 

  get '/square/:number' do
    @number = params[:number]
    @squared = @number.to_i * @number.to_i
    "#{@squared}"
  end 

  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    
    @output = @phrase * @number.to_i
    "#{@output}"
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    @number1 = params[:number1]
    @number2 = params[:number2]
    @operation = params[:operation]
    if @operation == 'add'
      @sum = @number1.to_i + @number2.to_i
      "#{@sum}"
    elsif @operation == 'subtract'
      @number = @number1.to_i - @number2.to_i
      "#{@number}"
    elsif @operation == 'multiply'
      @number = @number1.to_i * @number2.to_i
      "#{@number}"
    else @operation == 'divide'
      @number = @number1.to_i / @number2.to_i
      "#{@number}"
    end 
  end 

  

end

