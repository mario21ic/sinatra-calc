require 'sinatra'
require './modules/Calc'

get '/frank-says' do
  'Frank says: Put this in your pipe & smoke it!'
end

get '/hello/:name' do
  "Hello #{params['name']}!"
end

get '/add/:number1/:number2' do
  number1 = params['number1'].to_i
  number2 = params['number2'].to_i
  "Hello #{number1+number2}"
end

get '/add2/:number1/:number2' do
  calc = Calc.new
  result = calc.add(params['number1'].to_i, params['number2'].to_i)
  "Hello #{result}"
end


