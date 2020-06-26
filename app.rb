require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get "/reversename/:name" do
    revs = params[:name].reverse
    revs
  end

  get "/square/:number" do
    square = params[:number].to_i**2
    square.to_s
  end

  get "/say/:number/:phrase" do
    phrase = ""
    params[:number].to_i.times do
      phrase += params[:phrase]
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    phrase = params[:word1] + " " + params[:word2] + " " +  params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
    result = params[:number1].to_i + params[:number2].to_i
    result.to_s
    when "subtract"
      result = params[:number1].to_i - params[:number2].to_i
    result.to_s
    when "divide"
      result = params[:number1].to_i / params[:number2].to_i
    result.to_s
    when "multiply"
    result = params[:number1].to_i * params[:number2].to_i
    result.to_s
    end
  end

end