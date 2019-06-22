require 'sinatra'
require './modules/Calc'

set :bind, '0.0.0.0'

get '/frank-says' do
  'Put this in your pipe & smoke it!'
end

get '/hello/:name' do
  "Hello #{params['name']}!"
end

get '/add/:number1/:number2' do
  calc = Calc.new
  result = calc.add(params['number1'].to_i, params['number2'].to_i)
  "result: #{result}"
end


get '/sub/:number1/:number2' do
  calc = Calc.new
  result = calc.sub(params['number1'].to_i, params['number2'].to_i)
  "result: #{result}"
end

get '/mul/:number1/:number2' do
  calc = Calc.new
  result = calc.mul(params['number1'].to_i, params['number2'].to_i)
  "result: #{result}"
end

get '/div/:number1/:number2' do
  calc = Calc.new
  result = calc.div(params['number1'].to_i, params['number2'].to_i)
  "result: #{result}"
end
